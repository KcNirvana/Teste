.class Lcom/sdu/didi/openapi/DIOpenSDK$3$1;
.super Lcom/sdu/didi/openapi/gK/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sdu/didi/openapi/DIOpenSDK$3;->a([Ljava/lang/Void;)Ljava/util/Map;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/sdu/didi/openapi/DIOpenSDK$3;


# direct methods
.method constructor <init>(Lcom/sdu/didi/openapi/DIOpenSDK$3;)V
    .locals 0

    iput-object p1, p0, Lcom/sdu/didi/openapi/DIOpenSDK$3$1;->a:Lcom/sdu/didi/openapi/DIOpenSDK$3;

    invoke-direct {p0}, Lcom/sdu/didi/openapi/gK/a;-><init>()V

    return-void
.end method


# virtual methods
.method protected a(Lorg/json/JSONObject;)V
    .locals 3

    const-string/jumbo v0, "url"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    const-string/jumbo v2, "special_url"

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/sdu/didi/openapi/DIOpenSDK$3$1;->a:Lcom/sdu/didi/openapi/DIOpenSDK$3;

    iget-object v0, v0, Lcom/sdu/didi/openapi/DIOpenSDK$3;->a:Landroid/content/Context;

    invoke-static {v0, v1}, Lcom/sdu/didi/openapi/DIOpenSDK;->showDDPage(Landroid/content/Context;Ljava/util/HashMap;)V

    :cond_0
    return-void
.end method
