package Rz_compiler.semantics.identifier;

/**
 * Created by YRZ on 3/30/16.
 */
public class ArrayType extends Type{

    private Type basedtype;
    private Type linetype;
    private int dim;

    public ArrayType() {
        basedtype = null;
        linetype = null;
        dim = 1;
    }

    public int countdim(String arr) {
        int COUNTDIM = 0;
        for (int i = 0; i < arr.length(); ++i) {
            if (arr.substring(i, i + 1).equals("[")) {
                COUNTDIM++;
            }
        }
        return COUNTDIM;
    }

    public ArrayType(Type type) {
        this.linetype = type;
        if (type instanceof ArrayType) {
            this.dim = countdim(type.toString()) + 1;
            basedtype = ((ArrayType) type).getBasedtype();
        } else {
            this.basedtype = type;
            dim = 1;
        }
    }

    @Override
    public String toString() {
        String tmp = basedtype.toString();
        for (int i = 0; i < dim; ++i) {
            tmp += "[]";
        }
        return tmp;
    }

    @Override
    public void decreasedim() {
        dim -= 1;
//        if (linetype instanceof ArrayType) {
//            linetype.decreasedim();
//        }
    }

    public Type getType() {
        return linetype;
    }

    public int getDim() {
        return dim;
    }

    public Type getBasedtype() {
        return basedtype;
    }

    @Override
    public boolean equals(Object o) {
        if (o instanceof ArrayType) {
            if (((ArrayType) o).getBasedtype().equals(basedtype) && countdim(o.toString()) == dim) {
                return true;
            }
        }
        return false;
    }
}
