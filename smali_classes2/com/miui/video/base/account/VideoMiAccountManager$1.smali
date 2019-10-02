.class Lcom/miui/video/base/account/VideoMiAccountManager$1;
.super Ljava/lang/Object;
.source "VideoMiAccountManager.java"

# interfaces
.implements Landroid/accounts/OnAccountsUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/video/base/account/VideoMiAccountManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/video/base/account/VideoMiAccountManager;


# direct methods
.method constructor <init>(Lcom/miui/video/base/account/VideoMiAccountManager;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/video/base/account/VideoMiAccountManager$1;->this$0:Lcom/miui/video/base/account/VideoMiAccountManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAccountsUpdated([Landroid/accounts/Account;)V
    .locals 5

    const-string v0, "VideoMiAccountManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onAccounts Update : size = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v2, 0x0

    if-nez p1, :cond_0

    const/4 v3, 0x0

    goto :goto_0

    :cond_0
    array-length v3, p1

    :goto_0
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/miui/video/framework/log/LogUtils;->d(Ljava/lang/String;Ljava/lang/Object;)V

    const/4 v0, 0x0

    if-eqz p1, :cond_5

    array-length v1, p1

    if-gtz v1, :cond_1

    goto :goto_2

    :cond_1
    :goto_1
    array-length v1, p1

    if-ge v2, v1, :cond_6

    aget-object v1, p1, v2

    const-string v3, "com.xiaomi"

    iget-object v4, v1, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object p1, p0, Lcom/miui/video/base/account/VideoMiAccountManager$1;->this$0:Lcom/miui/video/base/account/VideoMiAccountManager;

    invoke-static {p1}, Lcom/miui/video/base/account/VideoMiAccountManager;->access$000(Lcom/miui/video/base/account/VideoMiAccountManager;)Landroid/accounts/Account;

    move-result-object p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/miui/video/base/account/VideoMiAccountManager$1;->this$0:Lcom/miui/video/base/account/VideoMiAccountManager;

    invoke-static {p1}, Lcom/miui/video/base/account/VideoMiAccountManager;->access$000(Lcom/miui/video/base/account/VideoMiAccountManager;)Landroid/accounts/Account;

    move-result-object p1

    iget-object p1, p1, Landroid/accounts/Account;->name:Ljava/lang/String;

    iget-object v0, v1, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_6

    :cond_2
    iget-object p1, p0, Lcom/miui/video/base/account/VideoMiAccountManager$1;->this$0:Lcom/miui/video/base/account/VideoMiAccountManager;

    invoke-static {p1, v1}, Lcom/miui/video/base/account/VideoMiAccountManager;->access$002(Lcom/miui/video/base/account/VideoMiAccountManager;Landroid/accounts/Account;)Landroid/accounts/Account;

    iget-object p1, p0, Lcom/miui/video/base/account/VideoMiAccountManager$1;->this$0:Lcom/miui/video/base/account/VideoMiAccountManager;

    iget-object v0, p0, Lcom/miui/video/base/account/VideoMiAccountManager$1;->this$0:Lcom/miui/video/base/account/VideoMiAccountManager;

    invoke-static {v0}, Lcom/miui/video/base/account/VideoMiAccountManager;->access$000(Lcom/miui/video/base/account/VideoMiAccountManager;)Landroid/accounts/Account;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/miui/video/base/account/VideoMiAccountManager;->access$100(Lcom/miui/video/base/account/VideoMiAccountManager;Landroid/accounts/Account;)V

    goto :goto_3

    :cond_3
    const-string v3, "com.xiaomi"

    iget-object v1, v1, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    array-length v1, p1

    add-int/lit8 v1, v1, -0x1

    if-ne v2, v1, :cond_4

    iget-object v1, p0, Lcom/miui/video/base/account/VideoMiAccountManager$1;->this$0:Lcom/miui/video/base/account/VideoMiAccountManager;

    invoke-static {v1}, Lcom/miui/video/base/account/VideoMiAccountManager;->access$000(Lcom/miui/video/base/account/VideoMiAccountManager;)Landroid/accounts/Account;

    move-result-object v1

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/miui/video/base/account/VideoMiAccountManager$1;->this$0:Lcom/miui/video/base/account/VideoMiAccountManager;

    invoke-static {v1, v0}, Lcom/miui/video/base/account/VideoMiAccountManager;->access$002(Lcom/miui/video/base/account/VideoMiAccountManager;Landroid/accounts/Account;)Landroid/accounts/Account;

    iget-object v1, p0, Lcom/miui/video/base/account/VideoMiAccountManager$1;->this$0:Lcom/miui/video/base/account/VideoMiAccountManager;

    iget-object v3, p0, Lcom/miui/video/base/account/VideoMiAccountManager$1;->this$0:Lcom/miui/video/base/account/VideoMiAccountManager;

    invoke-static {v3}, Lcom/miui/video/base/account/VideoMiAccountManager;->access$000(Lcom/miui/video/base/account/VideoMiAccountManager;)Landroid/accounts/Account;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/miui/video/base/account/VideoMiAccountManager;->access$100(Lcom/miui/video/base/account/VideoMiAccountManager;Landroid/accounts/Account;)V

    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_5
    :goto_2
    iget-object p1, p0, Lcom/miui/video/base/account/VideoMiAccountManager$1;->this$0:Lcom/miui/video/base/account/VideoMiAccountManager;

    invoke-static {p1}, Lcom/miui/video/base/account/VideoMiAccountManager;->access$000(Lcom/miui/video/base/account/VideoMiAccountManager;)Landroid/accounts/Account;

    move-result-object p1

    if-eqz p1, :cond_6

    iget-object p1, p0, Lcom/miui/video/base/account/VideoMiAccountManager$1;->this$0:Lcom/miui/video/base/account/VideoMiAccountManager;

    invoke-static {p1, v0}, Lcom/miui/video/base/account/VideoMiAccountManager;->access$002(Lcom/miui/video/base/account/VideoMiAccountManager;Landroid/accounts/Account;)Landroid/accounts/Account;

    iget-object p1, p0, Lcom/miui/video/base/account/VideoMiAccountManager$1;->this$0:Lcom/miui/video/base/account/VideoMiAccountManager;

    iget-object v0, p0, Lcom/miui/video/base/account/VideoMiAccountManager$1;->this$0:Lcom/miui/video/base/account/VideoMiAccountManager;

    invoke-static {v0}, Lcom/miui/video/base/account/VideoMiAccountManager;->access$000(Lcom/miui/video/base/account/VideoMiAccountManager;)Landroid/accounts/Account;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/miui/video/base/account/VideoMiAccountManager;->access$100(Lcom/miui/video/base/account/VideoMiAccountManager;Landroid/accounts/Account;)V

    :cond_6
    :goto_3
    return-void
.end method
