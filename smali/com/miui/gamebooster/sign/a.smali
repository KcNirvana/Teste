.class public Lcom/miui/gamebooster/sign/a;
.super Ljava/lang/Object;
.source ""


# static fields
.field private static op:Ljava/util/HashMap;

.field private static os:Lcom/miui/gamebooster/sign/a;


# instance fields
.field private oq:Ljava/util/ArrayList;

.field private or:Z

.field private ot:I

.field private ou:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/miui/gamebooster/sign/SignModel$1;

    invoke-direct {v0}, Lcom/miui/gamebooster/sign/SignModel$1;-><init>()V

    sput-object v0, Lcom/miui/gamebooster/sign/a;->op:Ljava/util/HashMap;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/miui/gamebooster/sign/a;->oq:Ljava/util/ArrayList;

    return-void
.end method

.method public static declared-synchronized getInstance()Lcom/miui/gamebooster/sign/a;
    .locals 2

    const-class v1, Lcom/miui/gamebooster/sign/a;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/miui/gamebooster/sign/a;->os:Lcom/miui/gamebooster/sign/a;

    if-nez v0, :cond_0

    new-instance v0, Lcom/miui/gamebooster/sign/a;

    invoke-direct {v0}, Lcom/miui/gamebooster/sign/a;-><init>()V

    sput-object v0, Lcom/miui/gamebooster/sign/a;->os:Lcom/miui/gamebooster/sign/a;

    :cond_0
    sget-object v0, Lcom/miui/gamebooster/sign/a;->os:Lcom/miui/gamebooster/sign/a;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public qV()Z
    .locals 1

    iget-boolean v0, p0, Lcom/miui/gamebooster/sign/a;->or:Z

    return v0
.end method

.method public qW()I
    .locals 1

    iget v0, p0, Lcom/miui/gamebooster/sign/a;->ot:I

    return v0
.end method

.method public qX()Ljava/util/ArrayList;
    .locals 5

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iget-object v0, p0, Lcom/miui/gamebooster/sign/a;->oq:Ljava/util/ArrayList;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    sget-object v1, Lcom/miui/gamebooster/sign/a;->op:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    iget v4, p0, Lcom/miui/gamebooster/sign/a;->ot:I

    sget-object v1, Lcom/miui/gamebooster/sign/a;->op:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-lt v4, v1, :cond_0

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-object v2
.end method

.method public qY(Lorg/json/JSONObject;)V
    .locals 2

    if-nez p1, :cond_0

    return-void

    :cond_0
    const-string/jumbo v0, "signedToday"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/miui/gamebooster/sign/a;->or:Z

    const-string/jumbo v0, "signDays"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/miui/gamebooster/sign/a;->ot:I

    const-string/jumbo v0, "supportSign"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v0

    const-string/jumbo v1, "key_gamebooster_support_sign_function"

    invoke-static {v1, v0}, Lcom/miui/common/persistence/a;->aMP(Ljava/lang/String;Z)V

    return-void
.end method

.method public qZ(Lorg/json/JSONObject;)V
    .locals 2

    if-nez p1, :cond_0

    return-void

    :cond_0
    const-string/jumbo v0, "signResult"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/miui/gamebooster/sign/a;->ou:Z

    const-string/jumbo v0, "signDays"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/miui/gamebooster/sign/a;->ot:I

    iget-boolean v0, p0, Lcom/miui/gamebooster/sign/a;->ou:Z

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/miui/gamebooster/sign/a;->ou:Z

    :goto_0
    iput-boolean v0, p0, Lcom/miui/gamebooster/sign/a;->or:Z

    iget-boolean v0, p0, Lcom/miui/gamebooster/sign/a;->ou:Z

    if-eqz v0, :cond_1

    const-string/jumbo v0, "click"

    const-string/jumbo v1, "sign_in_right_now"

    invoke-static {v0, v1}, Lcom/miui/gamebooster/a/t;->gE(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    return-void

    :cond_2
    iget-boolean v0, p0, Lcom/miui/gamebooster/sign/a;->or:Z

    goto :goto_0
.end method

.method public ra(Ljava/util/Map;Landroid/content/Context;Z)Z
    .locals 4

    if-nez p1, :cond_0

    :try_start_0
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    :cond_0
    const-string/jumbo v0, "miId"

    new-instance v1, Ljava/lang/String;

    invoke-static {p2}, Lcom/miui/applicationlock/utils/b;->adV(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "UTF-8"

    invoke-virtual {v2, v3}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v2

    const/4 v3, 0x2

    invoke-static {v2, v3}, Landroid/util/Base64;->encode([BI)[B

    move-result-object v2

    const-string/jumbo v3, "UTF-8"

    invoke-direct {v1, v2, v3}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz p3, :cond_1

    const-string/jumbo v0, "type"

    const-string/jumbo v1, "signin"

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_0
    const-string/jumbo v0, "http://adv.sec.miui.com/info/signinXunyou"

    sget-object v1, Lcom/miui/securityscan/utils/NetUtil$HttpMethod;->Jf:Lcom/miui/securityscan/utils/NetUtil$HttpMethod;

    const-string/jumbo v2, "4e0b237f-c3ae-4663-b94f-1357130f5599"

    invoke-static {p1, v0, v1, v2}, Lcom/miui/securityscan/utils/k;->Jh(Ljava/util/Map;Ljava/lang/String;Lcom/miui/securityscan/utils/NetUtil$HttpMethod;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    if-eqz p3, :cond_3

    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v1}, Lcom/miui/gamebooster/sign/a;->qZ(Lorg/json/JSONObject;)V

    :goto_1
    const/4 v0, 0x1

    return v0

    :cond_1
    const-string/jumbo v0, "type"

    const-string/jumbo v1, "query"

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string/jumbo v1, "NetUtils"

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    const/4 v0, 0x0

    return v0

    :cond_3
    :try_start_1
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v1}, Lcom/miui/gamebooster/sign/a;->qY(Lorg/json/JSONObject;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1
.end method

.method public rb(Ljava/util/ArrayList;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/gamebooster/sign/a;->oq:Ljava/util/ArrayList;

    return-void
.end method
