.class Lcom/ali/user/mobile/register/c/h;
.super Ljava/lang/Object;
.source "RPCStore.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/ali/user/mobile/register/b/a;

.field final synthetic b:Lcom/ali/user/mobile/register/c/g;


# direct methods
.method constructor <init>(Lcom/ali/user/mobile/register/c/g;Lcom/ali/user/mobile/register/b/a;)V
    .locals 0

    iput-object p1, p0, Lcom/ali/user/mobile/register/c/h;->b:Lcom/ali/user/mobile/register/c/g;

    iput-object p2, p0, Lcom/ali/user/mobile/register/c/h;->a:Lcom/ali/user/mobile/register/b/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lcom/ali/user/mobile/register/c/h;->a:Lcom/ali/user/mobile/register/b/a;

    invoke-interface {v0}, Lcom/ali/user/mobile/register/b/a;->afterDialog()V

    return-void
.end method
