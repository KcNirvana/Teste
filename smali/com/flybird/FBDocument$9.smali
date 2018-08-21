.class Lcom/flybird/FBDocument$9;
.super Ljava/lang/Object;
.source "FBDocument.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic this$0:Lcom/flybird/FBDocument;

.field final synthetic val$flag:Z

.field final synthetic val$funcKey:I

.field final synthetic val$length:I


# direct methods
.method constructor <init>(Lcom/flybird/FBDocument;ZII)V
    .locals 0

    iput-object p1, p0, Lcom/flybird/FBDocument$9;->this$0:Lcom/flybird/FBDocument;

    iput-boolean p2, p0, Lcom/flybird/FBDocument$9;->val$flag:Z

    iput p3, p0, Lcom/flybird/FBDocument$9;->val$length:I

    iput p4, p0, Lcom/flybird/FBDocument$9;->val$funcKey:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 5

    iget-boolean v0, p0, Lcom/flybird/FBDocument$9;->val$flag:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/flybird/FBDocument$9;->val$length:I

    add-int/lit8 v0, v0, -0x1

    if-ne p2, v0, :cond_0

    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    :goto_0
    return-void

    :cond_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string/jumbo v0, "index"

    invoke-virtual {v1, v0, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    iget-object v0, p0, Lcom/flybird/FBDocument$9;->this$0:Lcom/flybird/FBDocument;

    iget v2, p0, Lcom/flybird/FBDocument$9;->val$funcKey:I

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v1, v3, v4

    invoke-virtual {v0, v2, v3}, Lcom/flybird/FBDocument;->callJsMethod(I[Ljava/lang/Object;)I

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "exception"

    invoke-static {v2, v3, v0}, Lcom/alipay/birdnest/a/e;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1
.end method
