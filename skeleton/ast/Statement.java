package ast;

import java.io.PrintStream;

public class Statement extends ASTNode {

    public final String keyword;
    public final Expr expr;

    public Statement(String keyword, Expr expr, Location loc) {
        super(loc);
        this.keyword = keyword;
        this.expr = expr;
    }

    public void println(PrintStream ps) {
        ps.println(keyword + " " + expr);
    }
}
