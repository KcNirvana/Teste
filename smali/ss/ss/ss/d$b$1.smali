.class final Lss/ss/ss/d$b$1;
.super Lss/ss/ss/d$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lss/ss/ss/d$b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lss/ss/ss/d$b;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lss/ss/ss/e;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    sget-object v0, Lss/ss/ss/a;->k:Lss/ss/ss/a;

    invoke-virtual {p1, v0}, Lss/ss/ss/e;->a(Lss/ss/ss/a;)V

    return-void
.end method
