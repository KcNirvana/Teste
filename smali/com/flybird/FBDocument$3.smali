.class Lcom/flybird/FBDocument$3;
.super Ljava/lang/Object;
.source "FBDocument.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/flybird/FBDocument;

.field final synthetic val$dbg:Z


# direct methods
.method constructor <init>(Lcom/flybird/FBDocument;Z)V
    .locals 0

    iput-object p1, p0, Lcom/flybird/FBDocument$3;->this$0:Lcom/flybird/FBDocument;

    iput-boolean p2, p0, Lcom/flybird/FBDocument$3;->val$dbg:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-boolean v0, p0, Lcom/flybird/FBDocument$3;->val$dbg:Z

    if-eqz v0, :cond_0

    const-string/jumbo v0, "onLoadFinish-loadTemplate"

    invoke-static {v0}, Lcom/alipay/android/app/template/TProfiler;->tag(Ljava/lang/String;)V

    :cond_0
    iget-object v0, p0, Lcom/flybird/FBDocument$3;->this$0:Lcom/flybird/FBDocument;

    iget v0, v0, Lcom/flybird/FBDocument;->mCore:I

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/flybird/FBDocument$3;->this$0:Lcom/flybird/FBDocument;

    iget-object v0, v0, Lcom/flybird/FBDocument;->param:Lcom/alipay/birdnest/api/BirdNestEngine$g;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/flybird/FBDocument$3;->this$0:Lcom/flybird/FBDocument;

    iget-object v0, v0, Lcom/flybird/FBDocument;->param:Lcom/alipay/birdnest/api/BirdNestEngine$g;

    iget-object v0, v0, Lcom/alipay/birdnest/api/BirdNestEngine$g;->r:Lcom/alipay/android/app/template/OnLoadCallback;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/flybird/FBDocument$3;->this$0:Lcom/flybird/FBDocument;

    iget-object v0, v0, Lcom/flybird/FBDocument;->param:Lcom/alipay/birdnest/api/BirdNestEngine$g;

    iget-object v0, v0, Lcom/alipay/birdnest/api/BirdNestEngine$g;->r:Lcom/alipay/android/app/template/OnLoadCallback;

    iget-object v1, p0, Lcom/flybird/FBDocument$3;->this$0:Lcom/flybird/FBDocument;

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lcom/alipay/android/app/template/OnLoadCallback;->onLoadFinish(Ljava/lang/Object;Z)V

    iget-boolean v0, p0, Lcom/flybird/FBDocument$3;->val$dbg:Z

    if-eqz v0, :cond_1

    const-string/jumbo v0, "onLoadFinish-loadTemplate"

    const-string/jumbo v1, "mOnLoadCallback.onLoadFinish() done"

    invoke-static {v0, v1}, Lcom/alipay/android/app/template/TProfiler;->log(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    return-void
.end method
