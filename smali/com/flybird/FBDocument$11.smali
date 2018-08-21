.class Lcom/flybird/FBDocument$11;
.super Ljava/lang/Object;
.source "FBDocument.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic this$0:Lcom/flybird/FBDocument;

.field final synthetic val$callbackFuncKey:I


# direct methods
.method constructor <init>(Lcom/flybird/FBDocument;I)V
    .locals 0

    iput-object p1, p0, Lcom/flybird/FBDocument$11;->this$0:Lcom/flybird/FBDocument;

    iput p2, p0, Lcom/flybird/FBDocument$11;->val$callbackFuncKey:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 5

    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string/jumbo v0, "ok"

    const-string/jumbo v2, "ok"

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    iget-object v0, p0, Lcom/flybird/FBDocument$11;->this$0:Lcom/flybird/FBDocument;

    iget v2, p0, Lcom/flybird/FBDocument$11;->val$callbackFuncKey:I

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v1, v3, v4

    invoke-virtual {v0, v2, v3}, Lcom/flybird/FBDocument;->callJsMethod(I[Ljava/lang/Object;)I

    return-void

    :catch_0
    move-exception v0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "exception"

    invoke-static {v2, v3, v0}, Lcom/alipay/birdnest/a/e;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method
