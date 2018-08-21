.class public interface abstract Lss/b;
.super Ljava/lang/Object;


# static fields
.field public static final a:Lss/b;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lss/b$1;

    invoke-direct {v0}, Lss/b$1;-><init>()V

    sput-object v0, Lss/b;->a:Lss/b;

    return-void
.end method


# virtual methods
.method public abstract a(Lss/aa;Lss/y;)Lss/w;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method
