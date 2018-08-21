.class public Lcom/miui/payment/ui/edit/EditPresenterImpl;
.super Ljava/lang/Object;
.source "EditPresenterImpl.java"

# interfaces
.implements Lcom/miui/payment/ui/edit/EditPresenter;


# static fields
.field private static final TAG:Ljava/lang/String; = "EditPresenter"


# instance fields
.field private mDeleteDisposable:Lio/reactivex/disposables/Disposable;

.field private mEditViewInteraction:Lcom/miui/payment/ui/edit/EditViewInteraction;

.field private mSaveDisposable:Lio/reactivex/disposables/Disposable;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/miui/payment/ui/edit/EditPresenterImpl;)Lcom/miui/payment/ui/edit/EditViewInteraction;
    .locals 1

    iget-object v0, p0, Lcom/miui/payment/ui/edit/EditPresenterImpl;->mEditViewInteraction:Lcom/miui/payment/ui/edit/EditViewInteraction;

    return-object v0
.end method


# virtual methods
.method public deleteRecord(J)V
    .locals 3

    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-gtz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-static {}, Lcom/miui/payment/data/source/TransactionRepository;->getInstance()Lcom/miui/payment/data/source/TransactionRepository;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/miui/payment/data/source/TransactionRepository;->deleteTransactionsWithRx(J)Lio/reactivex/Observable;

    move-result-object v0

    invoke-static {}, Lcom/miui/payment/rx/RxUtil;->subscribeOnIoObserveOnMain()Lio/reactivex/ObservableTransformer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->compose(Lio/reactivex/ObservableTransformer;)Lio/reactivex/Observable;

    move-result-object v0

    new-instance v1, Lcom/miui/payment/ui/edit/EditPresenterImpl$5;

    invoke-direct {v1, p0}, Lcom/miui/payment/ui/edit/EditPresenterImpl$5;-><init>(Lcom/miui/payment/ui/edit/EditPresenterImpl;)V

    new-instance v2, Lcom/miui/payment/ui/edit/EditPresenterImpl$6;

    invoke-direct {v2, p0}, Lcom/miui/payment/ui/edit/EditPresenterImpl$6;-><init>(Lcom/miui/payment/ui/edit/EditPresenterImpl;)V

    invoke-virtual {v0, v1, v2}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/functions/Consumer;Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/payment/ui/edit/EditPresenterImpl;->mDeleteDisposable:Lio/reactivex/disposables/Disposable;

    goto :goto_0
.end method

.method public saveEditData(Lcom/miui/payment/ui/edit/EditData;)V
    .locals 8

    if-nez p1, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p1}, Lcom/miui/payment/ui/edit/EditData;->getRecordId()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-gtz v1, :cond_1

    new-instance v0, Lcom/miui/payment/data/TransactionItem$Builder;

    invoke-direct {v0}, Lcom/miui/payment/data/TransactionItem$Builder;-><init>()V

    invoke-virtual {p1}, Lcom/miui/payment/ui/edit/EditData;->getAmount()D

    move-result-wide v4

    invoke-virtual {p1}, Lcom/miui/payment/ui/edit/EditData;->getCurrencyCode()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v4, v5, v1}, Lcom/miui/payment/data/TransactionItem$Builder;->setAmount(DLjava/lang/String;)Lcom/miui/payment/data/TransactionItem$Builder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/miui/payment/ui/edit/EditData;->getAmount()D

    move-result-wide v4

    invoke-virtual {v1, v4, v5}, Lcom/miui/payment/data/TransactionItem$Builder;->setAmountEdit(D)Lcom/miui/payment/data/TransactionItem$Builder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/miui/payment/ui/edit/EditData;->getCategoryCode()I

    move-result v4

    invoke-virtual {v1, v4}, Lcom/miui/payment/data/TransactionItem$Builder;->setCategory(I)Lcom/miui/payment/data/TransactionItem$Builder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/miui/payment/ui/edit/EditData;->getCategoryCode()I

    move-result v4

    invoke-virtual {v1, v4}, Lcom/miui/payment/data/TransactionItem$Builder;->setCategoryEdit(I)Lcom/miui/payment/data/TransactionItem$Builder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/miui/payment/ui/edit/EditData;->getEditTime()J

    move-result-wide v4

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual {v1, v4, v5, v6, v7}, Lcom/miui/payment/data/TransactionItem$Builder;->setTransactionState(JILjava/lang/String;)Lcom/miui/payment/data/TransactionItem$Builder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/miui/payment/ui/edit/EditData;->getEditTime()J

    move-result-wide v4

    invoke-virtual {v1, v4, v5}, Lcom/miui/payment/data/TransactionItem$Builder;->setTransactionTimeEdit(J)Lcom/miui/payment/data/TransactionItem$Builder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/miui/payment/ui/edit/EditData;->getMethodCode()I

    move-result v4

    invoke-virtual {p1}, Lcom/miui/payment/ui/edit/EditData;->getMethodDesc()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Lcom/miui/payment/data/TransactionItem$Builder;->setMethod(ILjava/lang/String;)Lcom/miui/payment/data/TransactionItem$Builder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/miui/payment/ui/edit/EditData;->getMethodCode()I

    move-result v4

    invoke-virtual {v1, v4}, Lcom/miui/payment/data/TransactionItem$Builder;->setMethodEdit(I)Lcom/miui/payment/data/TransactionItem$Builder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/miui/payment/ui/edit/EditData;->getComment()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/miui/payment/data/TransactionItem$Builder;->setComment(Ljava/lang/String;)Lcom/miui/payment/data/TransactionItem$Builder;

    invoke-static {}, Lcom/miui/payment/data/source/TransactionRepository;->getInstance()Lcom/miui/payment/data/source/TransactionRepository;

    move-result-object v1

    invoke-virtual {v0}, Lcom/miui/payment/data/TransactionItem$Builder;->build()Lcom/miui/payment/data/TransactionItem;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/miui/payment/data/source/TransactionRepository;->saveTransactionsWithRx(Lcom/miui/payment/data/TransactionItem;)Lio/reactivex/Observable;

    move-result-object v1

    invoke-static {}, Lcom/miui/payment/rx/RxUtil;->subscribeOnIoObserveOnMain()Lio/reactivex/ObservableTransformer;

    move-result-object v4

    invoke-virtual {v1, v4}, Lio/reactivex/Observable;->compose(Lio/reactivex/ObservableTransformer;)Lio/reactivex/Observable;

    move-result-object v1

    new-instance v4, Lcom/miui/payment/ui/edit/EditPresenterImpl$1;

    invoke-direct {v4, p0}, Lcom/miui/payment/ui/edit/EditPresenterImpl$1;-><init>(Lcom/miui/payment/ui/edit/EditPresenterImpl;)V

    new-instance v5, Lcom/miui/payment/ui/edit/EditPresenterImpl$2;

    invoke-direct {v5, p0}, Lcom/miui/payment/ui/edit/EditPresenterImpl$2;-><init>(Lcom/miui/payment/ui/edit/EditPresenterImpl;)V

    invoke-virtual {v1, v4, v5}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/functions/Consumer;Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    move-result-object v1

    iput-object v1, p0, Lcom/miui/payment/ui/edit/EditPresenterImpl;->mSaveDisposable:Lio/reactivex/disposables/Disposable;

    goto/16 :goto_0

    :cond_1
    invoke-static {}, Lcom/miui/payment/data/source/TransactionRepository;->getInstance()Lcom/miui/payment/data/source/TransactionRepository;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/miui/payment/data/source/TransactionRepository;->updateTransactionsDataWithRx(Lcom/miui/payment/ui/edit/EditData;)Lio/reactivex/Observable;

    move-result-object v1

    invoke-static {}, Lcom/miui/payment/rx/RxUtil;->subscribeOnIoObserveOnMain()Lio/reactivex/ObservableTransformer;

    move-result-object v4

    invoke-virtual {v1, v4}, Lio/reactivex/Observable;->compose(Lio/reactivex/ObservableTransformer;)Lio/reactivex/Observable;

    move-result-object v1

    new-instance v4, Lcom/miui/payment/ui/edit/EditPresenterImpl$3;

    invoke-direct {v4, p0}, Lcom/miui/payment/ui/edit/EditPresenterImpl$3;-><init>(Lcom/miui/payment/ui/edit/EditPresenterImpl;)V

    new-instance v5, Lcom/miui/payment/ui/edit/EditPresenterImpl$4;

    invoke-direct {v5, p0}, Lcom/miui/payment/ui/edit/EditPresenterImpl$4;-><init>(Lcom/miui/payment/ui/edit/EditPresenterImpl;)V

    invoke-virtual {v1, v4, v5}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/functions/Consumer;Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    goto/16 :goto_0
.end method

.method public bridge synthetic subscribe(Lcom/miui/payment/ui/base/IViewInteraction;)V
    .locals 0

    check-cast p1, Lcom/miui/payment/ui/edit/EditViewInteraction;

    invoke-virtual {p0, p1}, Lcom/miui/payment/ui/edit/EditPresenterImpl;->subscribe(Lcom/miui/payment/ui/edit/EditViewInteraction;)V

    return-void
.end method

.method public subscribe(Lcom/miui/payment/ui/edit/EditViewInteraction;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/payment/ui/edit/EditPresenterImpl;->mEditViewInteraction:Lcom/miui/payment/ui/edit/EditViewInteraction;

    return-void
.end method

.method public unsubscribe()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/miui/payment/ui/edit/EditPresenterImpl;->mEditViewInteraction:Lcom/miui/payment/ui/edit/EditViewInteraction;

    return-void
.end method
