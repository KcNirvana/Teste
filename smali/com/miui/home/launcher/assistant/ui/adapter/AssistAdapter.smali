.class public Lcom/miui/home/launcher/assistant/ui/adapter/AssistAdapter;
.super Ljava/lang/Object;
.source "AssistAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/home/launcher/assistant/ui/adapter/AssistAdapter$ListAdapterImpl;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "AssistAdapter"


# instance fields
.field private mAniCount:I

.field public mCards:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/miui/home/launcher/assistant/module/CardSource;",
            ">;"
        }
    .end annotation
.end field

.field private mContext:Landroid/content/Context;

.field private mLayoutInflater:Landroid/view/LayoutInflater;

.field private mListAdapter:Lcom/miui/home/launcher/assistant/ui/adapter/AssistAdapter$ListAdapterImpl;

.field private mViewTypeSparse:Landroid/util/SparseIntArray;

.field private mfootView:Landroid/view/View;


# direct methods
.method public constructor <init>(Lcom/miui/home/launcher/assistant/ui/view/AssistHolderView;)V
    .locals 6

    const/4 v5, -0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v1, Landroid/util/SparseIntArray;

    invoke-direct {v1}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v1, p0, Lcom/miui/home/launcher/assistant/ui/adapter/AssistAdapter;->mViewTypeSparse:Landroid/util/SparseIntArray;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/miui/home/launcher/assistant/ui/adapter/AssistAdapter;->mCards:Ljava/util/List;

    new-instance v1, Lcom/miui/home/launcher/assistant/ui/adapter/AssistAdapter$ListAdapterImpl;

    invoke-direct {v1, p0}, Lcom/miui/home/launcher/assistant/ui/adapter/AssistAdapter$ListAdapterImpl;-><init>(Lcom/miui/home/launcher/assistant/ui/adapter/AssistAdapter;)V

    iput-object v1, p0, Lcom/miui/home/launcher/assistant/ui/adapter/AssistAdapter;->mListAdapter:Lcom/miui/home/launcher/assistant/ui/adapter/AssistAdapter$ListAdapterImpl;

    invoke-static {}, Lcom/miui/home/launcher/assistant/module/CardManager;->getCardViewTypes()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    iget-object v2, p0, Lcom/miui/home/launcher/assistant/ui/adapter/AssistAdapter;->mViewTypeSparse:Landroid/util/SparseIntArray;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {v2, v3, v5}, Landroid/util/SparseIntArray;->get(II)I

    move-result v2

    if-ne v2, v5, :cond_0

    iget-object v2, p0, Lcom/miui/home/launcher/assistant/ui/adapter/AssistAdapter;->mViewTypeSparse:Landroid/util/SparseIntArray;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v3

    iget-object v4, p0, Lcom/miui/home/launcher/assistant/ui/adapter/AssistAdapter;->mViewTypeSparse:Landroid/util/SparseIntArray;

    invoke-virtual {v4}, Landroid/util/SparseIntArray;->size()I

    move-result v4

    invoke-virtual {v2, v3, v4}, Landroid/util/SparseIntArray;->put(II)V

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Lcom/miui/home/launcher/assistant/ui/view/AssistHolderView;->getContext()Landroid/content/Context;

    move-result-object v1

    iput-object v1, p0, Lcom/miui/home/launcher/assistant/ui/adapter/AssistAdapter;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/miui/home/launcher/assistant/ui/adapter/AssistAdapter;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "layout_inflater"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/LayoutInflater;

    iput-object v1, p0, Lcom/miui/home/launcher/assistant/ui/adapter/AssistAdapter;->mLayoutInflater:Landroid/view/LayoutInflater;

    return-void
.end method

.method static synthetic access$000(Lcom/miui/home/launcher/assistant/ui/adapter/AssistAdapter;)Landroid/util/SparseIntArray;
    .locals 1

    iget-object v0, p0, Lcom/miui/home/launcher/assistant/ui/adapter/AssistAdapter;->mViewTypeSparse:Landroid/util/SparseIntArray;

    return-object v0
.end method

.method static synthetic access$100(Lcom/miui/home/launcher/assistant/ui/adapter/AssistAdapter;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/miui/home/launcher/assistant/ui/adapter/AssistAdapter;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$200(Lcom/miui/home/launcher/assistant/ui/adapter/AssistAdapter;)Landroid/view/LayoutInflater;
    .locals 1

    iget-object v0, p0, Lcom/miui/home/launcher/assistant/ui/adapter/AssistAdapter;->mLayoutInflater:Landroid/view/LayoutInflater;

    return-object v0
.end method

.method static synthetic access$300(Lcom/miui/home/launcher/assistant/ui/adapter/AssistAdapter;)Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/miui/home/launcher/assistant/ui/adapter/AssistAdapter;->mfootView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$400(Lcom/miui/home/launcher/assistant/ui/adapter/AssistAdapter;)I
    .locals 1

    iget v0, p0, Lcom/miui/home/launcher/assistant/ui/adapter/AssistAdapter;->mAniCount:I

    return v0
.end method

.method static synthetic access$402(Lcom/miui/home/launcher/assistant/ui/adapter/AssistAdapter;I)I
    .locals 0

    iput p1, p0, Lcom/miui/home/launcher/assistant/ui/adapter/AssistAdapter;->mAniCount:I

    return p1
.end method

.method static synthetic access$408(Lcom/miui/home/launcher/assistant/ui/adapter/AssistAdapter;)I
    .locals 2

    iget v0, p0, Lcom/miui/home/launcher/assistant/ui/adapter/AssistAdapter;->mAniCount:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/miui/home/launcher/assistant/ui/adapter/AssistAdapter;->mAniCount:I

    return v0
.end method

.method static synthetic access$410(Lcom/miui/home/launcher/assistant/ui/adapter/AssistAdapter;)I
    .locals 2

    iget v0, p0, Lcom/miui/home/launcher/assistant/ui/adapter/AssistAdapter;->mAniCount:I

    add-int/lit8 v1, v0, -0x1

    iput v1, p0, Lcom/miui/home/launcher/assistant/ui/adapter/AssistAdapter;->mAniCount:I

    return v0
.end method


# virtual methods
.method public getCardViewCount()I
    .locals 1

    iget-object v0, p0, Lcom/miui/home/launcher/assistant/ui/adapter/AssistAdapter;->mListAdapter:Lcom/miui/home/launcher/assistant/ui/adapter/AssistAdapter$ListAdapterImpl;

    invoke-virtual {v0}, Lcom/miui/home/launcher/assistant/ui/adapter/AssistAdapter$ListAdapterImpl;->getCount()I

    move-result v0

    return v0
.end method

.method public getListAdapter()Landroid/widget/ListAdapter;
    .locals 1

    iget-object v0, p0, Lcom/miui/home/launcher/assistant/ui/adapter/AssistAdapter;->mListAdapter:Lcom/miui/home/launcher/assistant/ui/adapter/AssistAdapter$ListAdapterImpl;

    return-object v0
.end method

.method public notifyDataChanged()V
    .locals 0

    invoke-virtual {p0}, Lcom/miui/home/launcher/assistant/ui/adapter/AssistAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method protected notifyDataSetChanged()V
    .locals 2

    const-string/jumbo v0, "AssistAdapter"

    const-string/jumbo v1, "notifyDataSetChanged"

    invoke-static {v0, v1}, Lcom/miui/home/launcher/assistant/config/PALog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/miui/home/launcher/assistant/ui/adapter/AssistAdapter;->mListAdapter:Lcom/miui/home/launcher/assistant/ui/adapter/AssistAdapter$ListAdapterImpl;

    invoke-virtual {v0}, Lcom/miui/home/launcher/assistant/ui/adapter/AssistAdapter$ListAdapterImpl;->notifyDataSetChanged()V

    return-void
.end method

.method protected notifyDataSetInvalidated()V
    .locals 2

    const-string/jumbo v0, "AssistAdapter"

    const-string/jumbo v1, "notifyDataSetInvalidated"

    invoke-static {v0, v1}, Lcom/miui/home/launcher/assistant/config/PALog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/miui/home/launcher/assistant/ui/adapter/AssistAdapter;->mListAdapter:Lcom/miui/home/launcher/assistant/ui/adapter/AssistAdapter$ListAdapterImpl;

    invoke-virtual {v0}, Lcom/miui/home/launcher/assistant/ui/adapter/AssistAdapter$ListAdapterImpl;->notifyDataSetInvalidated()V

    return-void
.end method

.method public setFootView(Landroid/view/View;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/home/launcher/assistant/ui/adapter/AssistAdapter;->mfootView:Landroid/view/View;

    return-void
.end method

.method public updateCards(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/miui/home/launcher/assistant/module/CardSource;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/miui/home/launcher/assistant/ui/adapter/AssistAdapter;->mCards:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/home/launcher/assistant/ui/adapter/AssistAdapter;->mCards:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    iput v0, p0, Lcom/miui/home/launcher/assistant/ui/adapter/AssistAdapter;->mAniCount:I

    :cond_0
    iput-object p1, p0, Lcom/miui/home/launcher/assistant/ui/adapter/AssistAdapter;->mCards:Ljava/util/List;

    return-void
.end method
