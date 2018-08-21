.class Lcom/miui/payment/ui/edit/EditPresenterImpl$6;
.super Ljava/lang/Object;
.source "EditPresenterImpl.java"

# interfaces
.implements Lio/reactivex/functions/Consumer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/payment/ui/edit/EditPresenterImpl;->deleteRecord(J)V
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
        "Ljava/lang/Throwable;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/payment/ui/edit/EditPresenterImpl;


# direct methods
.method constructor <init>(Lcom/miui/payment/ui/edit/EditPresenterImpl;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/payment/ui/edit/EditPresenterImpl$6;->this$0:Lcom/miui/payment/ui/edit/EditPresenterImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
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

    check-cast p1, Ljava/lang/Throwable;

    invoke-virtual {p0, p1}, Lcom/miui/payment/ui/edit/EditPresenterImpl$6;->accept(Ljava/lang/Throwable;)V

    return-void
.end method

.method public accept(Ljava/lang/Throwable;)V
    .locals 2
    .param p1    # Ljava/lang/Throwable;
        .annotation build Lio/reactivex/annotations/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    iget-object v0, p0, Lcom/miui/payment/ui/edit/EditPresenterImpl$6;->this$0:Lcom/miui/payment/ui/edit/EditPresenterImpl;

    invoke-static {v0}, Lcom/miui/payment/ui/edit/EditPresenterImpl;->access$000(Lcom/miui/payment/ui/edit/EditPresenterImpl;)Lcom/miui/payment/ui/edit/EditViewInteraction;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/payment/ui/edit/EditPresenterImpl$6;->this$0:Lcom/miui/payment/ui/edit/EditPresenterImpl;

    invoke-static {v0}, Lcom/miui/payment/ui/edit/EditPresenterImpl;->access$000(Lcom/miui/payment/ui/edit/EditPresenterImpl;)Lcom/miui/payment/ui/edit/EditViewInteraction;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/miui/payment/ui/edit/EditViewInteraction;->onDeleteResult(Z)V

    :cond_0
    return-void
.end method
