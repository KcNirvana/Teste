.class Lcom/ali/user/mobile/register/c/d;
.super Ljava/lang/Object;
.source "ActionCenter.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/ali/user/mobile/register/c/e;

.field final synthetic b:Lcom/ali/user/mobile/register/a/b;

.field final synthetic c:Lcom/ali/user/mobile/register/c/a;


# direct methods
.method constructor <init>(Lcom/ali/user/mobile/register/c/a;Lcom/ali/user/mobile/register/c/e;Lcom/ali/user/mobile/register/a/b;)V
    .locals 0

    iput-object p1, p0, Lcom/ali/user/mobile/register/c/d;->c:Lcom/ali/user/mobile/register/c/a;

    iput-object p2, p0, Lcom/ali/user/mobile/register/c/d;->a:Lcom/ali/user/mobile/register/c/e;

    iput-object p3, p0, Lcom/ali/user/mobile/register/c/d;->b:Lcom/ali/user/mobile/register/a/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/ali/user/mobile/register/c/d;->a:Lcom/ali/user/mobile/register/c/e;

    iget-object v1, p0, Lcom/ali/user/mobile/register/c/d;->b:Lcom/ali/user/mobile/register/a/b;

    invoke-interface {v0, v1}, Lcom/ali/user/mobile/register/c/e;->a(Lcom/ali/user/mobile/register/a/b;)V

    return-void
.end method
