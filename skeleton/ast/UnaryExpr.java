package ast;

public class UnaryExpr extends Expr {
    public final Expr expr;

    public UnaryExpr(Expr expr, Location loc) {
        super(loc);
        this.expr = expr;
    }

    @Override
    public String toString() {
        return "-" + " " + expr.toString();
    }
}
