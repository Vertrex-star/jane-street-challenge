class CNFBuilder:
    def __init__(self):
        self.nvars = 0
        self.clauses = []
        self.TRUE = self.new_var()
        self.clauses.append([self.TRUE])   # force TRUE literal true
        self.FALSE = -self.TRUE

    def new_var(self):
        self.nvars += 1
        return self.nvars

    def add_clause(self, lits):
        self.clauses.append(list(lits))

    def const(self, val):
        return self.TRUE if val else self.FALSE

    def and_(self, *args):
        args = list(args)
        if len(args) == 1:
            return args[0]
        z = self.new_var()
        for a in args:
            self.add_clause([-z, a])
        self.add_clause([z] + [-a for a in args])
        return z

    def or_(self, *args):
        args = list(args)
        if len(args) == 1:
            return args[0]
        z = self.new_var()
        for a in args:
            self.add_clause([z, -a])
        self.add_clause([-z] + list(args))
        return z

    def not_(self, a):
        return -a

    def xor_(self, a, b):
        z = self.new_var()
        self.add_clause([-z, a, b])
        self.add_clause([-z, -a, -b])
        self.add_clause([z, -a, b])
        self.add_clause([z, a, -b])
        return z

    def force(self, lit):
        self.add_clause([lit])
