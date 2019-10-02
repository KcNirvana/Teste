.class Lcom/xiaomi/ad/mediationconfig/internal/MediationConfigRemote$1;
.super Lcom/xiaomi/ad/mediationconfig/internal/utils/RemoteMethodInvoker;
.source "MediationConfigRemote.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaomi/ad/mediationconfig/internal/MediationConfigRemote;->requestCloudConfig(I[Ljava/lang/String;Ljava/lang/String;Lcom/xiaomi/ad/mediationconfig/internal/MediationConfigManager$OnGetConfigListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/xiaomi/ad/mediationconfig/internal/utils/RemoteMethodInvoker<",
        "Ljava/lang/String;",
        "Lcom/xiaomi/ad/mediationconfig/internal/IMediationConfigProxy;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:[Ljava/lang/String;

.field final synthetic c:Ljava/lang/String;

.field final synthetic d:Lcom/xiaomi/ad/mediationconfig/internal/MediationConfigManager$OnGetConfigListener;

.field final synthetic e:Lcom/xiaomi/ad/mediationconfig/internal/MediationConfigRemote;


# direct methods
.method constructor <init>(Lcom/xiaomi/ad/mediationconfig/internal/MediationConfigRemote;Landroid/content/Context;Ljava/lang/Class;I[Ljava/lang/String;Ljava/lang/String;Lcom/xiaomi/ad/mediationconfig/internal/MediationConfigManager$OnGetConfigListener;)V
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/ad/mediationconfig/internal/MediationConfigRemote$1;->e:Lcom/xiaomi/ad/mediationconfig/internal/MediationConfigRemote;

    iput p4, p0, Lcom/xiaomi/ad/mediationconfig/internal/MediationConfigRemote$1;->a:I

    iput-object p5, p0, Lcom/xiaomi/ad/mediationconfig/internal/MediationConfigRemote$1;->b:[Ljava/lang/String;

    iput-object p6, p0, Lcom/xiaomi/ad/mediationconfig/internal/MediationConfigRemote$1;->c:Ljava/lang/String;

    iput-object p7, p0, Lcom/xiaomi/ad/mediationconfig/internal/MediationConfigRemote$1;->d:Lcom/xiaomi/ad/mediationconfig/internal/MediationConfigManager$OnGetConfigListener;

    invoke-direct {p0, p2, p3}, Lcom/xiaomi/ad/mediationconfig/internal/utils/RemoteMethodInvoker;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic innerInvoke(Landroid/os/IInterface;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    check-cast p1, Lcom/xiaomi/ad/mediationconfig/internal/IMediationConfigProxy;

    invoke-virtual {p0, p1}, Lcom/xiaomi/ad/mediationconfig/internal/MediationConfigRemote$1;->innerInvoke(Lcom/xiaomi/ad/mediationconfig/internal/IMediationConfigProxy;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public innerInvoke(Lcom/xiaomi/ad/mediationconfig/internal/IMediationConfigProxy;)Ljava/lang/String;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    :try_start_0
    iget-object v0, p0, Lcom/xiaomi/ad/mediationconfig/internal/MediationConfigRemote$1;->e:Lcom/xiaomi/ad/mediationconfig/internal/MediationConfigRemote;

    invoke-static {v0}, Lcom/xiaomi/ad/mediationconfig/internal/MediationConfigRemote;->a(Lcom/xiaomi/ad/mediationconfig/internal/MediationConfigRemote;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    iget-object v0, p0, Lcom/xiaomi/ad/mediationconfig/internal/MediationConfigRemote$1;->e:Lcom/xiaomi/ad/mediationconfig/internal/MediationConfigRemote;

    invoke-static {v0}, Lcom/xiaomi/ad/mediationconfig/internal/MediationConfigRemote;->a(Lcom/xiaomi/ad/mediationconfig/internal/MediationConfigRemote;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaomi/ad/mediationconfig/internal/utils/AndroidUtil;->getAppVersion(Landroid/content/Context;)I

    move-result v3

    iget v4, p0, Lcom/xiaomi/ad/mediationconfig/internal/MediationConfigRemote$1;->a:I

    iget-object v5, p0, Lcom/xiaomi/ad/mediationconfig/internal/MediationConfigRemote$1;->b:[Ljava/lang/String;

    iget-object v6, p0, Lcom/xiaomi/ad/mediationconfig/internal/MediationConfigRemote$1;->c:Ljava/lang/String;

    move-object v1, p1

    invoke-interface/range {v1 .. v6}, Lcom/xiaomi/ad/mediationconfig/internal/IMediationConfigProxy;->getCloudConfig(Ljava/lang/String;II[Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p1, p0, Lcom/xiaomi/ad/mediationconfig/internal/MediationConfigRemote$1;->d:Lcom/xiaomi/ad/mediationconfig/internal/MediationConfigManager$OnGetConfigListener;

    iget-object v0, p0, Lcom/xiaomi/ad/mediationconfig/internal/MediationConfigRemote$1;->e:Lcom/xiaomi/ad/mediationconfig/internal/MediationConfigRemote;

    invoke-static {v0}, Lcom/xiaomi/ad/mediationconfig/internal/MediationConfigRemote;->a(Lcom/xiaomi/ad/mediationconfig/internal/MediationConfigRemote;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaomi/ad/mediationconfig/internal/MediationConfigRemote$1;->b:[Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/xiaomi/ad/mediationconfig/internal/MediationConfigManager;->getLocalConfig(Landroid/content/Context;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/xiaomi/ad/mediationconfig/internal/MediationConfigManager$OnGetConfigListener;->onGetConfig(Ljava/lang/String;)V

    goto :goto_1

    :cond_0
    iget-object v0, p0, Lcom/xiaomi/ad/mediationconfig/internal/MediationConfigRemote$1;->d:Lcom/xiaomi/ad/mediationconfig/internal/MediationConfigManager$OnGetConfigListener;

    invoke-interface {v0, p1}, Lcom/xiaomi/ad/mediationconfig/internal/MediationConfigManager$OnGetConfigListener;->onGetConfig(Ljava/lang/String;)V

    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0, p1}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    const/4 p1, 0x0

    :goto_0
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v1

    if-ge p1, v1, :cond_1

    invoke-virtual {v0, p1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v1

    const-string v2, "ct"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/xiaomi/ad/mediationconfig/internal/MediationConfigRemote$1;->e:Lcom/xiaomi/ad/mediationconfig/internal/MediationConfigRemote;

    invoke-static {v4}, Lcom/xiaomi/ad/mediationconfig/internal/MediationConfigRemote;->a(Lcom/xiaomi/ad/mediationconfig/internal/MediationConfigRemote;)Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/xiaomi/ad/mediationconfig/internal/MediationConfigRemote$1;->e:Lcom/xiaomi/ad/mediationconfig/internal/MediationConfigRemote;

    invoke-static {v3}, Lcom/xiaomi/ad/mediationconfig/internal/MediationConfigRemote;->a(Lcom/xiaomi/ad/mediationconfig/internal/MediationConfigRemote;)Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/xiaomi/ad/mediationconfig/internal/MediationConfigCache;->getInstance(Landroid/content/Context;)Lcom/xiaomi/ad/mediationconfig/internal/MediationConfigCache;

    move-result-object v3

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v2, v1}, Lcom/xiaomi/ad/mediationconfig/internal/MediationConfigCache;->save(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :catch_0
    move-exception p1

    const-string v0, "MediationConfig"

    const-string v1, "requestCloudConfig"

    invoke-static {v0, v1, p1}, Lcom/miui/zeus/logger/MLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    iget-object p1, p0, Lcom/xiaomi/ad/mediationconfig/internal/MediationConfigRemote$1;->d:Lcom/xiaomi/ad/mediationconfig/internal/MediationConfigManager$OnGetConfigListener;

    iget-object v0, p0, Lcom/xiaomi/ad/mediationconfig/internal/MediationConfigRemote$1;->e:Lcom/xiaomi/ad/mediationconfig/internal/MediationConfigRemote;

    invoke-static {v0}, Lcom/xiaomi/ad/mediationconfig/internal/MediationConfigRemote;->a(Lcom/xiaomi/ad/mediationconfig/internal/MediationConfigRemote;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaomi/ad/mediationconfig/internal/MediationConfigRemote$1;->b:[Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/xiaomi/ad/mediationconfig/internal/MediationConfigManager;->getLocalConfig(Landroid/content/Context;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/xiaomi/ad/mediationconfig/internal/MediationConfigManager$OnGetConfigListener;->onGetConfig(Ljava/lang/String;)V

    :cond_1
    :goto_1
    const/4 p1, 0x0

    return-object p1
.end method
