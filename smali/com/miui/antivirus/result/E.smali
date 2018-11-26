.class final Lcom/miui/antivirus/result/E;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/miui/securityscan/cards/g;


# instance fields
.field final synthetic anQ:Lcom/miui/antivirus/result/c;


# direct methods
.method constructor <init>(Lcom/miui/antivirus/result/c;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/antivirus/result/E;->anQ:Lcom/miui/antivirus/result/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public eg(Ljava/lang/String;II)V
    .locals 3

    iget-object v0, p0, Lcom/miui/antivirus/result/E;->anQ:Lcom/miui/antivirus/result/c;

    invoke-static {v0}, Lcom/miui/antivirus/result/c;->asL(Lcom/miui/antivirus/result/c;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/antivirus/result/a;

    instance-of v2, v0, Lcom/miui/antivirus/result/Advertisement;

    if-eqz v2, :cond_0

    check-cast v0, Lcom/miui/antivirus/result/Advertisement;

    invoke-virtual {v0}, Lcom/miui/antivirus/result/Advertisement;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v1, p0, Lcom/miui/antivirus/result/E;->anQ:Lcom/miui/antivirus/result/c;

    invoke-virtual {v1}, Lcom/miui/antivirus/result/c;->asE()V

    invoke-static {p2}, Lcom/miui/securityscan/d/b;->Lo(I)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object v2, p0, Lcom/miui/antivirus/result/E;->anQ:Lcom/miui/antivirus/result/c;

    invoke-virtual {v2, v1, v0}, Lcom/miui/antivirus/result/c;->asB(Ljava/lang/String;Lcom/miui/antivirus/result/Advertisement;)V

    :cond_1
    return-void
.end method
