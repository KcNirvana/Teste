.class Lcom/sdu/didi/openapi/DIOpenSDK$4;
.super Lcom/sdu/didi/openapi/gK/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sdu/didi/openapi/DIOpenSDK;->b(Ljava/lang/String;)Ljava/util/Map;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/util/Map;

.field final synthetic b:Lcom/sdu/didi/openapi/DIOpenSDK;


# direct methods
.method constructor <init>(Lcom/sdu/didi/openapi/DIOpenSDK;Ljava/util/Map;)V
    .locals 0

    iput-object p1, p0, Lcom/sdu/didi/openapi/DIOpenSDK$4;->b:Lcom/sdu/didi/openapi/DIOpenSDK;

    iput-object p2, p0, Lcom/sdu/didi/openapi/DIOpenSDK$4;->a:Ljava/util/Map;

    invoke-direct {p0}, Lcom/sdu/didi/openapi/gK/a;-><init>()V

    return-void
.end method


# virtual methods
.method protected a(Lorg/json/JSONObject;)V
    .locals 4

    invoke-virtual {p1}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iget-object v2, p0, Lcom/sdu/didi/openapi/DIOpenSDK$4;->a:Ljava/util/Map;

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    return-void
.end method
