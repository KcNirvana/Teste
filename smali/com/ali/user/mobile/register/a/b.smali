.class public Lcom/ali/user/mobile/register/a/b;
.super Ljava/lang/Object;
.source "State.java"


# static fields
.field public static a:Ljava/lang/String;


# instance fields
.field public volatile b:I

.field public c:Lcom/alipay/mobileapp/biz/rpc/unifyregister/vo/pb/UnifyRegisterAllResPb;

.field public d:Ljava/lang/String;

.field public e:Lcom/alipay/android/phone/mrpc/core/RpcException;

.field public f:Ljava/lang/String;

.field public g:Ljava/lang/String;

.field public h:Landroid/os/Bundle;

.field private i:Lcom/ali/user/mobile/register/Account;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string/jumbo v0, "0"

    sput-object v0, Lcom/ali/user/mobile/register/a/b;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Lcom/ali/user/mobile/register/Account;
    .locals 1

    iget-object v0, p0, Lcom/ali/user/mobile/register/a/b;->i:Lcom/ali/user/mobile/register/Account;

    return-object v0
.end method

.method public a(Lcom/ali/user/mobile/register/Account;)V
    .locals 1

    new-instance v0, Lcom/ali/user/mobile/register/Account;

    invoke-direct {v0, p1}, Lcom/ali/user/mobile/register/Account;-><init>(Lcom/ali/user/mobile/register/Account;)V

    iput-object v0, p0, Lcom/ali/user/mobile/register/a/b;->i:Lcom/ali/user/mobile/register/Account;

    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/ali/user/mobile/register/a/b;->i:Lcom/ali/user/mobile/register/Account;

    if-nez v0, :cond_0

    new-instance v0, Lcom/ali/user/mobile/register/Account;

    invoke-direct {v0, p1, p2, p3}, Lcom/ali/user/mobile/register/Account;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/ali/user/mobile/register/a/b;->i:Lcom/ali/user/mobile/register/Account;

    :goto_0
    invoke-static {}, Lcom/ali/user/mobile/register/a/c;->b()V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/ali/user/mobile/register/a/b;->i:Lcom/ali/user/mobile/register/Account;

    invoke-virtual {v0, p1, p2, p3}, Lcom/ali/user/mobile/register/Account;->update(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public b()Z
    .locals 1

    iget-object v0, p0, Lcom/ali/user/mobile/register/a/b;->c:Lcom/alipay/mobileapp/biz/rpc/unifyregister/vo/pb/UnifyRegisterAllResPb;

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/ali/user/mobile/register/a/b;->d:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/ali/user/mobile/register/a/b;->g:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget v0, p0, Lcom/ali/user/mobile/register/a/b;->b:I

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/ali/user/mobile/register/a/b;->f:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/ali/user/mobile/register/a/b;->h:Landroid/os/Bundle;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ali/user/mobile/register/a/b;->h:Landroid/os/Bundle;

    invoke-virtual {v0}, Landroid/os/Bundle;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_0
    iget-object v0, p0, Lcom/ali/user/mobile/register/a/b;->i:Lcom/ali/user/mobile/register/Account;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/ali/user/mobile/register/a/b;->i:Lcom/ali/user/mobile/register/Account;

    invoke-virtual {v0}, Lcom/ali/user/mobile/register/Account;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public declared-synchronized c()Lcom/ali/user/mobile/register/a/b;
    .locals 3

    monitor-enter p0

    :try_start_0
    new-instance v1, Lcom/ali/user/mobile/register/a/b;

    invoke-direct {v1}, Lcom/ali/user/mobile/register/a/b;-><init>()V

    iget v0, p0, Lcom/ali/user/mobile/register/a/b;->b:I

    iput v0, v1, Lcom/ali/user/mobile/register/a/b;->b:I

    iget-object v0, p0, Lcom/ali/user/mobile/register/a/b;->c:Lcom/alipay/mobileapp/biz/rpc/unifyregister/vo/pb/UnifyRegisterAllResPb;

    iput-object v0, v1, Lcom/ali/user/mobile/register/a/b;->c:Lcom/alipay/mobileapp/biz/rpc/unifyregister/vo/pb/UnifyRegisterAllResPb;

    iget-object v0, p0, Lcom/ali/user/mobile/register/a/b;->d:Ljava/lang/String;

    iput-object v0, v1, Lcom/ali/user/mobile/register/a/b;->d:Ljava/lang/String;

    iget-object v0, p0, Lcom/ali/user/mobile/register/a/b;->f:Ljava/lang/String;

    iput-object v0, v1, Lcom/ali/user/mobile/register/a/b;->f:Ljava/lang/String;

    iget-object v0, p0, Lcom/ali/user/mobile/register/a/b;->g:Ljava/lang/String;

    iput-object v0, v1, Lcom/ali/user/mobile/register/a/b;->g:Ljava/lang/String;

    iget-object v0, p0, Lcom/ali/user/mobile/register/a/b;->i:Lcom/ali/user/mobile/register/Account;

    if-nez v0, :cond_1

    new-instance v0, Lcom/ali/user/mobile/register/Account;

    invoke-direct {v0}, Lcom/ali/user/mobile/register/Account;-><init>()V

    :goto_0
    iput-object v0, v1, Lcom/ali/user/mobile/register/a/b;->i:Lcom/ali/user/mobile/register/Account;

    iget-object v0, p0, Lcom/ali/user/mobile/register/a/b;->h:Landroid/os/Bundle;

    if-eqz v0, :cond_0

    new-instance v0, Landroid/os/Bundle;

    iget-object v2, p0, Lcom/ali/user/mobile/register/a/b;->h:Landroid/os/Bundle;

    invoke-direct {v0, v2}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    iput-object v0, v1, Lcom/ali/user/mobile/register/a/b;->h:Landroid/os/Bundle;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit p0

    return-object v1

    :cond_1
    :try_start_1
    new-instance v0, Lcom/ali/user/mobile/register/Account;

    iget-object v2, p0, Lcom/ali/user/mobile/register/a/b;->i:Lcom/ali/user/mobile/register/Account;

    invoke-direct {v0, v2}, Lcom/ali/user/mobile/register/Account;-><init>(Lcom/ali/user/mobile/register/Account;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/ali/user/mobile/register/a/b;->b:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/ali/user/mobile/register/a/b;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/ali/user/mobile/register/a/b;->g:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v0, p0, Lcom/ali/user/mobile/register/a/b;->c:Lcom/alipay/mobileapp/biz/rpc/unifyregister/vo/pb/UnifyRegisterAllResPb;

    if-nez v0, :cond_0

    const-string/jumbo v0, ""

    :goto_0
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/ali/user/mobile/register/a/b;->c:Lcom/alipay/mobileapp/biz/rpc/unifyregister/vo/pb/UnifyRegisterAllResPb;

    iget-object v0, v0, Lcom/alipay/mobileapp/biz/rpc/unifyregister/vo/pb/UnifyRegisterAllResPb;->resultStatus:Ljava/lang/Long;

    goto :goto_0
.end method
