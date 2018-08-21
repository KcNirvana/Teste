.class Lcom/flybird/FBDocument$13;
.super Lcom/alipay/birdnest/a/h;
.source "FBDocument.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/alipay/birdnest/a/h",
        "<",
        "Ljava/lang/String;",
        "Ljava/lang/Void;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/flybird/FBDocument;

.field final synthetic val$args:Ljava/lang/String;

.field final synthetic val$cbFuncKey:I

.field final synthetic val$invokingCore:I

.field final synthetic val$name:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/flybird/FBDocument;Ljava/util/concurrent/ExecutorService;ILjava/lang/String;Ljava/lang/String;I)V
    .locals 0

    iput-object p1, p0, Lcom/flybird/FBDocument$13;->this$0:Lcom/flybird/FBDocument;

    iput p3, p0, Lcom/flybird/FBDocument$13;->val$invokingCore:I

    iput-object p4, p0, Lcom/flybird/FBDocument$13;->val$name:Ljava/lang/String;

    iput-object p5, p0, Lcom/flybird/FBDocument$13;->val$args:Ljava/lang/String;

    iput p6, p0, Lcom/flybird/FBDocument$13;->val$cbFuncKey:I

    invoke-direct {p0, p2}, Lcom/alipay/birdnest/a/h;-><init>(Ljava/util/concurrent/ExecutorService;)V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, [Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/flybird/FBDocument$13;->doInBackground([Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/String;)Ljava/lang/Object;
    .locals 4

    iget-object v0, p0, Lcom/flybird/FBDocument$13;->this$0:Lcom/flybird/FBDocument;

    iget v0, v0, Lcom/flybird/FBDocument;->mCore:I

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/flybird/FBDocument$13;->val$invokingCore:I

    iget-object v1, p0, Lcom/flybird/FBDocument$13;->this$0:Lcom/flybird/FBDocument;

    iget v1, v1, Lcom/flybird/FBDocument;->mCore:I

    if-eq v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_1
    :try_start_0
    invoke-static {}, Lcom/alipay/android/app/template/JSPluginManager;->getInstanse()Lcom/alipay/android/app/template/JSPluginManager;

    move-result-object v0

    iget-object v1, p0, Lcom/flybird/FBDocument$13;->this$0:Lcom/flybird/FBDocument;

    iget-object v1, v1, Lcom/flybird/FBDocument;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/flybird/FBDocument$13;->val$name:Ljava/lang/String;

    iget-object v3, p0, Lcom/flybird/FBDocument$13;->val$args:Ljava/lang/String;

    invoke-virtual {v0, v1, v2, v3}, Lcom/alipay/android/app/template/JSPluginManager;->performInvoke(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string/jumbo v1, "FBDocument"

    invoke-static {v1, v0}, Lcom/alipay/birdnest/a/e;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    goto :goto_0
.end method

.method protected onPostExecute(Ljava/lang/Object;)V
    .locals 3

    iget-object v0, p0, Lcom/flybird/FBDocument$13;->this$0:Lcom/flybird/FBDocument;

    iget v0, v0, Lcom/flybird/FBDocument;->mCore:I

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/flybird/FBDocument$13;->val$invokingCore:I

    iget-object v1, p0, Lcom/flybird/FBDocument$13;->this$0:Lcom/flybird/FBDocument;

    iget v1, v1, Lcom/flybird/FBDocument;->mCore:I

    if-eq v0, v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string/jumbo v0, "FBDocument"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "document.invoke old way name: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/flybird/FBDocument$13;->val$name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", mCore: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/flybird/FBDocument$13;->this$0:Lcom/flybird/FBDocument;

    iget v2, v2, Lcom/flybird/FBDocument;->mCore:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", invokingCore: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/flybird/FBDocument$13;->val$invokingCore:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", args: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/flybird/FBDocument$13;->val$args:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", result: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alipay/birdnest/a/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/flybird/FBDocument$13;->this$0:Lcom/flybird/FBDocument;

    iget-object v0, v0, Lcom/flybird/FBDocument;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/flybird/FBDocument$13;->val$cbFuncKey:I

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/flybird/FBDocument$13;->this$0:Lcom/flybird/FBDocument;

    iget v1, v0, Lcom/flybird/FBDocument;->mCore:I

    iget v2, p0, Lcom/flybird/FBDocument$13;->val$cbFuncKey:I

    if-nez p1, :cond_2

    const-string/jumbo v0, "{}"

    :goto_1
    invoke-static {v1, v2, v0}, Lcom/flybird/FBDocument;->nativeCallJsMethodWithJson(IILjava/lang/String;)I

    goto :goto_0

    :cond_2
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1
.end method
