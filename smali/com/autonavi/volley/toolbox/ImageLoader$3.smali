.class Lcom/autonavi/volley/toolbox/ImageLoader$3;
.super Ljava/lang/Object;
.source "ImageLoader.java"

# interfaces
.implements Lcom/autonavi/volley/Response$ErrorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/autonavi/volley/toolbox/ImageLoader;->makeImageRequest(Ljava/lang/String;IILandroid/widget/ImageView$ScaleType;Ljava/lang/String;)Lcom/autonavi/volley/Request;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/autonavi/volley/Response$ErrorListener;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/autonavi/volley/toolbox/ImageLoader;

.field private final synthetic val$cacheKey:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/autonavi/volley/toolbox/ImageLoader;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/autonavi/volley/toolbox/ImageLoader$3;->this$0:Lcom/autonavi/volley/toolbox/ImageLoader;

    iput-object p2, p0, Lcom/autonavi/volley/toolbox/ImageLoader$3;->val$cacheKey:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onErrorResponse(Lcom/autonavi/volley/VolleyError;)V
    .locals 2

    iget-object v0, p0, Lcom/autonavi/volley/toolbox/ImageLoader$3;->this$0:Lcom/autonavi/volley/toolbox/ImageLoader;

    iget-object v1, p0, Lcom/autonavi/volley/toolbox/ImageLoader$3;->val$cacheKey:Ljava/lang/String;

    invoke-virtual {v0, v1, p1}, Lcom/autonavi/volley/toolbox/ImageLoader;->onGetImageError(Ljava/lang/String;Lcom/autonavi/volley/VolleyError;)V

    return-void
.end method
