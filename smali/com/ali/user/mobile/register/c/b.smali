.class Lcom/ali/user/mobile/register/c/b;
.super Ljava/lang/Object;
.source "ActionCenter.java"

# interfaces
.implements Lcom/ali/user/mobile/register/c/e;


# instance fields
.field final synthetic a:Lcom/ali/user/mobile/register/c/a;


# direct methods
.method constructor <init>(Lcom/ali/user/mobile/register/c/a;)V
    .locals 0

    iput-object p1, p0, Lcom/ali/user/mobile/register/c/b;->a:Lcom/ali/user/mobile/register/c/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/ali/user/mobile/register/a/b;)V
    .locals 3

    const-string/jumbo v0, "Reg_actionCenter"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "state handled by mock callback "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/ali/user/mobile/e/a;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
