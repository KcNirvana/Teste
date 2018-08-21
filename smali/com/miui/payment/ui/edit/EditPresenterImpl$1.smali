.class Lcom/miui/payment/ui/edit/EditPresenterImpl$1;
.super Ljava/lang/Object;
.source "EditPresenterImpl.java"

# interfaces
.implements Lio/reactivex/functions/Consumer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/payment/ui/edit/EditPresenterImpl;->saveEditData(Lcom/miui/payment/ui/edit/EditData;)V
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
        "Ljava/lang/Long;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/payment/ui/edit/EditPresenterImpl;


# direct methods
.method constructor <init>(Lcom/miui/payment/ui/edit/EditPresenterImpl;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/payment/ui/edit/EditPresenterImpl$1;->this$0:Lcom/miui/payment/ui/edit/EditPresenterImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public accept(Ljava/lang/Long;)V
    .locals 6
    .param p1    # Ljava/lang/Long;
        .annotation build Lio/reactivex/annotations/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    iget-object v0, p0, Lcom/miui/payment/ui/edit/EditPresenterImpl$1;->this$0:Lcom/miui/payment/ui/edit/EditPresenterImpl;

    invoke-static {v0}, Lcom/miui/payment/ui/edit/EditPresenterImpl;->access$000(Lcom/miui/payment/ui/edit/EditPresenterImpl;)Lcom/miui/payment/ui/edit/EditViewInteraction;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/payment/ui/edit/EditPresenterImpl$1;->this$0:Lcom/miui/payment/ui/edit/EditPresenterImpl;

    invoke-static {v0}, Lcom/miui/payment/ui/edit/EditPresenterImpl;->access$000(Lcom/miui/payment/ui/edit/EditPresenterImpl;)Lcom/miui/payment/ui/edit/EditViewInteraction;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    if-lez v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    invoke-interface {v1, v0}, Lcom/miui/payment/ui/edit/EditViewInteraction;->onSaveResult(Z)V

    :cond_0
    return-void

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
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

    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p0, p1}, Lcom/miui/payment/ui/edit/EditPresenterImpl$1;->accept(Ljava/lang/Long;)V

    return-void
.end method
