.class public Lcom/alipay/android/app/flybird/ui/FlybirdEventListener;
.super Ljava/lang/Object;
.source "FlybirdEventListener.java"


# static fields
.field private static final DUPLICATE_TIME_DISTANCE:I = 0x258


# instance fields
.field private mFormListener:Lcom/alipay/android/app/flybird/ui/event/FlybirdOnFormEventListener;

.field private mLastSumbitTime:J


# direct methods
.method public constructor <init>(Lcom/alipay/android/app/flybird/ui/event/FlybirdOnFormEventListener;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/alipay/android/app/flybird/ui/FlybirdEventListener;->mLastSumbitTime:J

    iput-object p1, p0, Lcom/alipay/android/app/flybird/ui/FlybirdEventListener;->mFormListener:Lcom/alipay/android/app/flybird/ui/event/FlybirdOnFormEventListener;

    return-void
.end method

.method static synthetic access$000(Lcom/alipay/android/app/flybird/ui/FlybirdEventListener;)J
    .locals 2

    iget-wide v0, p0, Lcom/alipay/android/app/flybird/ui/FlybirdEventListener;->mLastSumbitTime:J

    return-wide v0
.end method

.method static synthetic access$002(Lcom/alipay/android/app/flybird/ui/FlybirdEventListener;J)J
    .locals 1

    iput-wide p1, p0, Lcom/alipay/android/app/flybird/ui/FlybirdEventListener;->mLastSumbitTime:J

    return-wide p1
.end method

.method static synthetic access$100(Lcom/alipay/android/app/flybird/ui/FlybirdEventListener;)Lcom/alipay/android/app/flybird/ui/event/FlybirdOnFormEventListener;
    .locals 1

    iget-object v0, p0, Lcom/alipay/android/app/flybird/ui/FlybirdEventListener;->mFormListener:Lcom/alipay/android/app/flybird/ui/event/FlybirdOnFormEventListener;

    return-object v0
.end method


# virtual methods
.method public onAsyncEvent(Ljava/lang/Object;Ljava/lang/String;Lcom/alipay/android/app/template/ITemplateClickCallback;)Z
    .locals 1

    new-instance v0, Lcom/alipay/android/app/flybird/ui/FlybirdEventListener$2;

    invoke-direct {v0, p0, p2}, Lcom/alipay/android/app/flybird/ui/FlybirdEventListener$2;-><init>(Lcom/alipay/android/app/flybird/ui/FlybirdEventListener;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/alipay/android/app/d/b/c;->a(Ljava/lang/Runnable;)V

    const/4 v0, 0x1

    return v0
.end method

.method public onEvent(Ljava/lang/Object;Ljava/lang/String;Z)Z
    .locals 5

    const/4 v4, 0x1

    const-string/jumbo v0, "phonecashiermsp"

    const-string/jumbo v1, "FlybirdEventListener.onEvent"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "*****::"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ":::params:::"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ":::isClick"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v0, v1, v2}, Lcom/alipay/android/app/g/g;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lcom/alipay/android/app/flybird/ui/FlybirdEventListener$1;

    invoke-direct {v0, p0, p2}, Lcom/alipay/android/app/flybird/ui/FlybirdEventListener$1;-><init>(Lcom/alipay/android/app/flybird/ui/FlybirdEventListener;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/alipay/android/app/d/b/c;->a(Ljava/lang/Runnable;)V

    return v4
.end method

.method public onFaceAuthEnd(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5

    new-instance v0, Lcom/alipay/android/app/json/JSONObject;

    invoke-direct {v0, p1}, Lcom/alipay/android/app/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string/jumbo v1, "params"

    invoke-virtual {v0, v1}, Lcom/alipay/android/app/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string/jumbo v1, "params"

    invoke-virtual {v0, v1}, Lcom/alipay/android/app/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lcom/alipay/android/app/json/JSONObject;

    move-result-object v1

    new-instance v2, Lcom/alipay/android/app/json/JSONObject;

    invoke-virtual {v1}, Lcom/alipay/android/app/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/alipay/android/app/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string/jumbo v3, "uri"

    invoke-virtual {v2, v3}, Lcom/alipay/android/app/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    const-string/jumbo v3, "uri"

    invoke-virtual {v2, v3}, Lcom/alipay/android/app/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "uri"

    invoke-virtual {v2, v4}, Lcom/alipay/android/app/json/JSONObject;->remove(Ljava/lang/String;)V

    const-string/jumbo v4, "name"

    invoke-virtual {v2, v4, v3}, Lcom/alipay/android/app/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v3, "token"

    invoke-virtual {v1, v3, p2}, Lcom/alipay/android/app/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v3, "params"

    invoke-virtual {v2, v3, v1}, Lcom/alipay/android/app/json/JSONObject;->put(Ljava/lang/String;Lcom/alipay/android/app/json/JSONObject;)V

    new-instance v1, Lcom/alipay/android/app/json/JSONObject;

    invoke-direct {v1}, Lcom/alipay/android/app/json/JSONObject;-><init>()V

    const-string/jumbo v3, "action"

    invoke-virtual {v1, v3, v2}, Lcom/alipay/android/app/json/JSONObject;->put(Ljava/lang/String;Lcom/alipay/android/app/json/JSONObject;)V

    const-string/jumbo v3, "loadtxt"

    invoke-virtual {v0, v3}, Lcom/alipay/android/app/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    const-string/jumbo v3, "loadtxt"

    const-string/jumbo v4, "loadtxt"

    invoke-virtual {v0, v4}, Lcom/alipay/android/app/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v2, v3, v0}, Lcom/alipay/android/app/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_0
    new-instance v0, Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType;

    invoke-direct {v0}, Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType;-><init>()V

    invoke-virtual {v0, v1}, Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType;->parseAction(Lcom/alipay/android/app/json/JSONObject;)[Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType$EventType;

    iget-object v1, p0, Lcom/alipay/android/app/flybird/ui/FlybirdEventListener;->mFormListener:Lcom/alipay/android/app/flybird/ui/event/FlybirdOnFormEventListener;

    invoke-interface {v1, v0}, Lcom/alipay/android/app/flybird/ui/event/FlybirdOnFormEventListener;->onEvent(Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType;)Z

    :cond_1
    return-void
.end method

.method public onVerifyidEnd(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5

    new-instance v1, Lcom/alipay/android/app/json/JSONObject;

    invoke-direct {v1, p1}, Lcom/alipay/android/app/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string/jumbo v0, "params"

    invoke-virtual {v1, v0}, Lcom/alipay/android/app/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string/jumbo v0, "params"

    invoke-virtual {v1, v0}, Lcom/alipay/android/app/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lcom/alipay/android/app/json/JSONObject;

    move-result-object v0

    new-instance v2, Lcom/alipay/android/app/json/JSONObject;

    invoke-virtual {v0}, Lcom/alipay/android/app/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/alipay/android/app/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string/jumbo v3, "uri"

    invoke-virtual {v2, v3}, Lcom/alipay/android/app/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    const-string/jumbo v3, "uri"

    invoke-virtual {v2, v3}, Lcom/alipay/android/app/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "uri"

    invoke-virtual {v2, v4}, Lcom/alipay/android/app/json/JSONObject;->remove(Ljava/lang/String;)V

    const-string/jumbo v4, "name"

    invoke-virtual {v2, v4, v3}, Lcom/alipay/android/app/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    new-instance v3, Lcom/alipay/android/app/json/JSONObject;

    invoke-direct {v3, p2}, Lcom/alipay/android/app/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-static {v0, v3}, Lcom/alipay/android/app/g/c;->a(Lcom/alipay/android/app/json/JSONObject;Lcom/alipay/android/app/json/JSONObject;)Lcom/alipay/android/app/json/JSONObject;

    move-result-object v0

    :cond_0
    const-string/jumbo v3, "params"

    invoke-virtual {v2, v3, v0}, Lcom/alipay/android/app/json/JSONObject;->put(Ljava/lang/String;Lcom/alipay/android/app/json/JSONObject;)V

    new-instance v0, Lcom/alipay/android/app/json/JSONObject;

    invoke-direct {v0}, Lcom/alipay/android/app/json/JSONObject;-><init>()V

    const-string/jumbo v3, "action"

    invoke-virtual {v0, v3, v2}, Lcom/alipay/android/app/json/JSONObject;->put(Ljava/lang/String;Lcom/alipay/android/app/json/JSONObject;)V

    const-string/jumbo v3, "loadtxt"

    invoke-virtual {v1, v3}, Lcom/alipay/android/app/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    const-string/jumbo v3, "loadtxt"

    const-string/jumbo v4, "loadtxt"

    invoke-virtual {v1, v4}, Lcom/alipay/android/app/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v2, v3, v1}, Lcom/alipay/android/app/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_1
    new-instance v1, Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType;

    invoke-direct {v1}, Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType;-><init>()V

    invoke-virtual {v1, v0}, Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType;->parseAction(Lcom/alipay/android/app/json/JSONObject;)[Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType$EventType;

    iget-object v0, p0, Lcom/alipay/android/app/flybird/ui/FlybirdEventListener;->mFormListener:Lcom/alipay/android/app/flybird/ui/event/FlybirdOnFormEventListener;

    invoke-interface {v0, v1}, Lcom/alipay/android/app/flybird/ui/event/FlybirdOnFormEventListener;->onEvent(Lcom/alipay/android/app/flybird/ui/event/FlybirdActionType;)Z

    :cond_2
    return-void
.end method
