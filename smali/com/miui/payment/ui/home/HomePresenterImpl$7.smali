.class Lcom/miui/payment/ui/home/HomePresenterImpl$7;
.super Ljava/lang/Object;
.source "HomePresenterImpl.java"

# interfaces
.implements Lio/reactivex/functions/Consumer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/payment/ui/home/HomePresenterImpl;->deleteRecords(Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lio/reactivex/functions/Consumer",
        "<",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/payment/ui/home/HomePresenterImpl;


# direct methods
.method constructor <init>(Lcom/miui/payment/ui/home/HomePresenterImpl;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/payment/ui/home/HomePresenterImpl$7;->this$0:Lcom/miui/payment/ui/home/HomePresenterImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public accept(Ljava/lang/Boolean;)V
    .locals 2
    .param p1    # Ljava/lang/Boolean;
        .annotation build Lio/reactivex/annotations/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    iget-object v0, p0, Lcom/miui/payment/ui/home/HomePresenterImpl$7;->this$0:Lcom/miui/payment/ui/home/HomePresenterImpl;

    invoke-static {v0}, Lcom/miui/payment/ui/home/HomePresenterImpl;->access$300(Lcom/miui/payment/ui/home/HomePresenterImpl;)Ljava/lang/ref/WeakReference;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/payment/ui/home/HomePresenterImpl$7;->this$0:Lcom/miui/payment/ui/home/HomePresenterImpl;

    invoke-static {v0}, Lcom/miui/payment/ui/home/HomePresenterImpl;->access$300(Lcom/miui/payment/ui/home/HomePresenterImpl;)Ljava/lang/ref/WeakReference;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/payment/ui/home/HomePresenterImpl$7;->this$0:Lcom/miui/payment/ui/home/HomePresenterImpl;

    invoke-static {v0}, Lcom/miui/payment/ui/home/HomePresenterImpl;->access$300(Lcom/miui/payment/ui/home/HomePresenterImpl;)Ljava/lang/ref/WeakReference;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/payment/ui/home/HomeViewInteraction;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-interface {v0, v1}, Lcom/miui/payment/ui/home/HomeViewInteraction;->onDeleteResult(Z)V

    :cond_0
    return-void
.end method

.method public bridge synthetic accept(Ljava/lang/Object;)V
    .locals 0
    .param p1    # Ljava/lang/Object;
        .annotation build Lio/reactivex/annotations/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Lcom/miui/payment/ui/home/HomePresenterImpl$7;->accept(Ljava/lang/Boolean;)V

    return-void
.end method
