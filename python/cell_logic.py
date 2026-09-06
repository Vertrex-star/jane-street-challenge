"""
Cell logic definitions for sky130_fd_sc_hd_* cells, generic over an "Ops"
interface (and_/or_/not_/xor_) so the SAME function definitions can be used
both for plain boolean simulation (fast, for sanity checks) and for CNF/
Tseitin encoding (for the SAT solver). This guarantees the two never drift
apart from each other.

These mirror accurate_sky130_stubs.v exactly.
"""

class BoolOps:
    """Plain Python boolean evaluation."""
    @staticmethod
    def and_(*args):
        r = True
        for a in args:
            r = r and a
        return r
    @staticmethod
    def or_(*args):
        r = False
        for a in args:
            r = r or a
        return r
    @staticmethod
    def not_(a):
        return not a
    @staticmethod
    def xor_(a, b):
        return a != b


def cell_eval(celltype, pins, ops):
    """
    pins: dict of pin_name -> value (bool, or CNF literal depending on ops)
    ops: and_/or_/not_/xor_ implementation
    returns: dict of output_pin_name -> value
    """
    A = pins.get('A'); B = pins.get('B'); C = pins.get('C'); D = pins.get('D')
    A1 = pins.get('A1'); A2 = pins.get('A2'); A3 = pins.get('A3'); A4 = pins.get('A4')
    B1 = pins.get('B1'); B2 = pins.get('B2')
    C1 = pins.get('C1'); D1 = pins.get('D1')
    A_N = pins.get('A_N'); B_N = pins.get('B_N'); C_N = pins.get('C_N'); D_N = pins.get('D_N')
    A1_N = pins.get('A1_N'); A2_N = pins.get('A2_N'); B1_N = pins.get('B1_N')
    S = pins.get('S'); A0 = pins.get('A0')

    and_, or_, not_, xor_ = ops.and_, ops.or_, ops.not_, ops.xor_
    t = celltype.replace('sky130_fd_sc_hd__', '')

    if t == 'inv_2':
        return {'Y': not_(A)}
    if t == 'buf_2':
        return {'X': A}
    if t == 'and2_2':
        return {'X': and_(A, B)}
    if t == 'and3_2':
        return {'X': and_(A, B, C)}
    if t == 'and4_2':
        return {'X': and_(A, B, C, D)}
    if t == 'or2_2':
        return {'X': or_(A, B)}
    if t == 'or3_2':
        return {'X': or_(A, B, C)}
    if t == 'or4_2':
        return {'X': or_(A, B, C, D)}
    if t == 'nand2_2':
        return {'Y': not_(and_(A, B))}
    if t == 'nand3_2':
        return {'Y': not_(and_(A, B, C))}
    if t == 'nand4_2':
        return {'Y': not_(and_(A, B, C, D))}
    if t == 'nor2_2':
        return {'Y': not_(or_(A, B))}
    if t == 'nor3_2':
        return {'Y': not_(or_(A, B, C))}
    if t == 'nor4_2':
        return {'Y': not_(or_(A, B, C, D))}
    if t == 'xor2_2':
        return {'X': xor_(A, B)}
    if t == 'xnor2_2':
        return {'Y': not_(xor_(A, B))}
    if t == 'mux2_1':
        # X = S ? A1 : A0
        return {'X': or_(and_(not_(S), A0), and_(S, A1))}

    if t == 'and2b_2':
        return {'X': and_(not_(A_N), B)}
    if t == 'and3b_2':
        return {'X': and_(not_(A_N), B, C)}
    if t == 'and4b_2':
        return {'X': and_(not_(A_N), B, C, D)}
    if t == 'and4bb_2':
        return {'X': and_(not_(A_N), not_(B_N), C, D)}
    if t == 'nand2b_2':
        return {'Y': not_(and_(not_(A_N), B))}
    if t == 'nand3b_2':
        return {'Y': not_(and_(not_(A_N), B, C))}
    if t == 'nor3b_2':
        return {'Y': not_(or_(A, B, not_(C_N)))}
    if t == 'nor4b_2':
        return {'Y': not_(or_(A, B, C, not_(D_N)))}
    if t == 'or3b_2':
        return {'X': or_(A, B, not_(C_N))}
    if t == 'or4b_2':
        return {'X': or_(A, B, C, not_(D_N))}
    if t == 'or4bb_2':
        return {'X': or_(A, B, not_(C_N), not_(D_N))}

    if t == 'a21o_2':
        return {'X': or_(and_(A1, A2), B1)}
    if t == 'a21oi_2':
        return {'Y': not_(or_(and_(A1, A2), B1))}
    if t == 'a211o_2':
        return {'X': or_(and_(A1, A2), B1, C1)}
    if t == 'a211oi_2':
        return {'Y': not_(or_(and_(A1, A2), B1, C1))}
    if t == 'a22o_2':
        return {'X': or_(and_(A1, A2), and_(B1, B2))}
    if t == 'a22oi_2':
        return {'Y': not_(or_(and_(A1, A2), and_(B1, B2)))}
    if t == 'a221o_2':
        return {'X': or_(and_(A1, A2), and_(B1, B2), C1)}
    if t == 'a221oi_2':
        return {'Y': not_(or_(and_(A1, A2), and_(B1, B2), C1))}
    if t == 'a2111oi_2':
        return {'Y': not_(or_(and_(A1, A2), B1, C1, D1))}
    if t == 'a31o_2':
        return {'X': or_(and_(A1, A2, A3), B1)}
    if t == 'a31oi_2':
        return {'Y': not_(or_(and_(A1, A2, A3), B1))}
    if t == 'a311o_2':
        return {'X': or_(and_(A1, A2, A3), B1, C1)}
    if t == 'a32o_2':
        return {'X': or_(and_(A1, A2, A3), and_(B1, B2))}
    if t == 'a41oi_2':
        return {'Y': not_(or_(and_(A1, A2, A3, A4), B1))}
    if t == 'a21bo_2':
        return {'X': or_(and_(A1, A2), not_(B1_N))}
    if t == 'a21boi_2':
        return {'Y': not_(or_(and_(A1, A2), not_(B1_N)))}

    if t == 'o21a_2':
        return {'X': and_(or_(A1, A2), B1)}
    if t == 'o21ai_2':
        return {'Y': not_(and_(or_(A1, A2), B1))}
    if t == 'o211a_2':
        return {'X': and_(or_(A1, A2), B1, C1)}
    if t == 'o211ai_2':
        return {'Y': not_(and_(or_(A1, A2), B1, C1))}
    if t == 'o22a_2':
        return {'X': and_(or_(A1, A2), or_(B1, B2))}
    if t == 'o22ai_2':
        return {'Y': not_(and_(or_(A1, A2), or_(B1, B2)))}
    if t == 'o221a_2':
        return {'X': and_(or_(A1, A2), or_(B1, B2), C1)}
    if t == 'o311a_2':
        return {'X': and_(or_(A1, A2, A3), B1, C1)}
    if t == 'o31a_2':
        return {'X': and_(or_(A1, A2, A3), B1)}
    if t == 'o31ai_2':
        return {'Y': not_(and_(or_(A1, A2, A3), B1))}
    if t == 'o32a_2':
        return {'X': and_(or_(A1, A2, A3), or_(B1, B2))}
    if t == 'o32ai_2':
        return {'Y': not_(and_(or_(A1, A2, A3), or_(B1, B2)))}
    if t == 'o21ba_2':
        return {'X': and_(or_(A1, A2), not_(B1_N))}
    if t == 'o21bai_2':
        return {'Y': not_(and_(or_(A1, A2), not_(B1_N)))}
    if t == 'o2bb2a_2':
        return {'X': and_(or_(not_(A1_N), not_(A2_N)), or_(B1, B2))}

    if t == 'conb_1':
        return {'HI': True if ops is BoolOps else ops.const(True),
                'LO': False if ops is BoolOps else ops.const(False)}

    raise ValueError(f"unhandled cell type: {celltype}")
