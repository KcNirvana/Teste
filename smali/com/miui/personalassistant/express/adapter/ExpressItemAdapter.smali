.class public Lcom/miui/personalassistant/express/adapter/ExpressItemAdapter;
.super Landroid/support/v7/widget/RecyclerView$Adapter;
.source "ExpressItemAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/personalassistant/express/adapter/ExpressItemAdapter$OnItemClickListener;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/support/v7/widget/RecyclerView$Adapter",
        "<",
        "Lcom/miui/personalassistant/express/adapter/ExpressItemViewHolder;",
        ">;"
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "ExpressItemAdapter"


# instance fields
.field private mCheckedItems:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mContext:Landroid/content/Context;

.field private mEditMode:Z

.field private mEntryList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/miui/personalassistant/express/bean/ExpressEntry;",
            ">;"
        }
    .end annotation
.end field

.field private mIconUrlMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mLayoutInflater:Landroid/view/LayoutInflater;

.field private mOnItemClickListener:Lcom/miui/personalassistant/express/adapter/ExpressItemAdapter$OnItemClickListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$Adapter;-><init>()V

    iput-object p1, p0, Lcom/miui/personalassistant/express/adapter/ExpressItemAdapter;->mContext:Landroid/content/Context;

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/personalassistant/express/adapter/ExpressItemAdapter;->mLayoutInflater:Landroid/view/LayoutInflater;

    return-void
.end method

.method static synthetic access$000(Lcom/miui/personalassistant/express/adapter/ExpressItemAdapter;)Lcom/miui/personalassistant/express/adapter/ExpressItemAdapter$OnItemClickListener;
    .locals 1

    iget-object v0, p0, Lcom/miui/personalassistant/express/adapter/ExpressItemAdapter;->mOnItemClickListener:Lcom/miui/personalassistant/express/adapter/ExpressItemAdapter$OnItemClickListener;

    return-object v0
.end method


# virtual methods
.method public bindData(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/miui/personalassistant/express/bean/ExpressEntry;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/miui/personalassistant/express/adapter/ExpressItemAdapter;->mEntryList:Ljava/util/List;

    invoke-virtual {p0}, Lcom/miui/personalassistant/express/adapter/ExpressItemAdapter;->notifyDataSetChanged()V

    const-string/jumbo v0, "ExpressItemAdapter"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "bindData: data size = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/miui/personalassistant/express/adapter/ExpressItemAdapter;->mEntryList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public enterEditMode(Ljava/util/Set;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/miui/personalassistant/express/adapter/ExpressItemAdapter;->mEditMode:Z

    iput-object p1, p0, Lcom/miui/personalassistant/express/adapter/ExpressItemAdapter;->mCheckedItems:Ljava/util/Set;

    invoke-virtual {p0}, Lcom/miui/personalassistant/express/adapter/ExpressItemAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method public exitEditMode()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/miui/personalassistant/express/adapter/ExpressItemAdapter;->mEditMode:Z

    invoke-virtual {p0}, Lcom/miui/personalassistant/express/adapter/ExpressItemAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method public getEntry(I)Lcom/miui/personalassistant/express/bean/ExpressEntry;
    .locals 1

    iget-object v0, p0, Lcom/miui/personalassistant/express/adapter/ExpressItemAdapter;->mEntryList:Ljava/util/List;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/miui/personalassistant/express/adapter/ExpressItemAdapter;->mEntryList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/personalassistant/express/bean/ExpressEntry;

    goto :goto_0
.end method

.method public getEntry(Landroid/database/Cursor;)Lcom/miui/personalassistant/express/bean/ExpressEntry;
    .locals 3

    const-string/jumbo v2, "content"

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-class v2, Lcom/miui/personalassistant/express/bean/ExpressEntry;

    invoke-static {v0, v2}, Lcom/alibaba/fastjson/JSON;->parseObject(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/miui/personalassistant/express/bean/ExpressEntry;

    const-string/jumbo v2, "cache_key"

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/miui/personalassistant/express/bean/ExpressEntry;->setKey(Ljava/lang/String;)V

    const-string/jumbo v2, "remark"

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/miui/personalassistant/express/bean/ExpressEntry;->setRemark(Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/miui/personalassistant/express/bean/ExpressEntry;->getLatestTime()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string/jumbo v2, "etag"

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/miui/personalassistant/express/bean/ExpressEntry;->setLatestTime(Ljava/lang/String;)V

    :cond_0
    return-object v1
.end method

.method public getItemCount()I
    .locals 1

    iget-object v0, p0, Lcom/miui/personalassistant/express/adapter/ExpressItemAdapter;->mEntryList:Ljava/util/List;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/miui/personalassistant/express/adapter/ExpressItemAdapter;->mEntryList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    goto :goto_0
.end method

.method public bridge synthetic onBindViewHolder(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V
    .locals 0

    check-cast p1, Lcom/miui/personalassistant/express/adapter/ExpressItemViewHolder;

    invoke-virtual {p0, p1, p2}, Lcom/miui/personalassistant/express/adapter/ExpressItemAdapter;->onBindViewHolder(Lcom/miui/personalassistant/express/adapter/ExpressItemViewHolder;I)V

    return-void
.end method

.method public onBindViewHolder(Lcom/miui/personalassistant/express/adapter/ExpressItemViewHolder;I)V
    .locals 4

    iget-object v2, p0, Lcom/miui/personalassistant/express/adapter/ExpressItemAdapter;->mEntryList:Ljava/util/List;

    invoke-interface {v2, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/miui/personalassistant/express/bean/ExpressEntry;

    iget-object v2, p0, Lcom/miui/personalassistant/express/adapter/ExpressItemAdapter;->mCheckedItems:Ljava/util/Set;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/miui/personalassistant/express/adapter/ExpressItemAdapter;->mCheckedItems:Ljava/util/Set;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v0, 0x1

    :goto_0
    iget-boolean v2, p0, Lcom/miui/personalassistant/express/adapter/ExpressItemAdapter;->mEditMode:Z

    iget-object v3, p0, Lcom/miui/personalassistant/express/adapter/ExpressItemAdapter;->mIconUrlMap:Ljava/util/Map;

    invoke-virtual {p1, v1, v2, v0, v3}, Lcom/miui/personalassistant/express/adapter/ExpressItemViewHolder;->bindData(Lcom/miui/personalassistant/express/bean/ExpressEntry;ZZLjava/util/Map;)V

    iget-object v2, p0, Lcom/miui/personalassistant/express/adapter/ExpressItemAdapter;->mOnItemClickListener:Lcom/miui/personalassistant/express/adapter/ExpressItemAdapter$OnItemClickListener;

    if-eqz v2, :cond_0

    iget-object v2, p1, Lcom/miui/personalassistant/express/adapter/ExpressItemViewHolder;->itemView:Landroid/view/View;

    new-instance v3, Lcom/miui/personalassistant/express/adapter/ExpressItemAdapter$1;

    invoke-direct {v3, p0, p1}, Lcom/miui/personalassistant/express/adapter/ExpressItemAdapter$1;-><init>(Lcom/miui/personalassistant/express/adapter/ExpressItemAdapter;Lcom/miui/personalassistant/express/adapter/ExpressItemViewHolder;)V

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v2, p1, Lcom/miui/personalassistant/express/adapter/ExpressItemViewHolder;->itemView:Landroid/view/View;

    new-instance v3, Lcom/miui/personalassistant/express/adapter/ExpressItemAdapter$2;

    invoke-direct {v3, p0, p1}, Lcom/miui/personalassistant/express/adapter/ExpressItemAdapter$2;-><init>(Lcom/miui/personalassistant/express/adapter/ExpressItemAdapter;Lcom/miui/personalassistant/express/adapter/ExpressItemViewHolder;)V

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    :cond_0
    return-void

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .locals 1

    invoke-virtual {p0, p1, p2}, Lcom/miui/personalassistant/express/adapter/ExpressItemAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/miui/personalassistant/express/adapter/ExpressItemViewHolder;

    move-result-object v0

    return-object v0
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/miui/personalassistant/express/adapter/ExpressItemViewHolder;
    .locals 5

    new-instance v0, Lcom/miui/personalassistant/express/adapter/ExpressItemViewHolder;

    iget-object v1, p0, Lcom/miui/personalassistant/express/adapter/ExpressItemAdapter;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/miui/personalassistant/express/adapter/ExpressItemAdapter;->mLayoutInflater:Landroid/view/LayoutInflater;

    const v3, 0x1b04007a

    const/4 v4, 0x0

    invoke-virtual {v2, v3, p1, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/miui/personalassistant/express/adapter/ExpressItemViewHolder;-><init>(Landroid/content/Context;Landroid/view/View;)V

    return-object v0
.end method

.method public setCompanyIcons(Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/miui/personalassistant/express/adapter/ExpressItemAdapter;->mIconUrlMap:Ljava/util/Map;

    return-void
.end method

.method public setOnItemClickListener(Lcom/miui/personalassistant/express/adapter/ExpressItemAdapter$OnItemClickListener;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/personalassistant/express/adapter/ExpressItemAdapter;->mOnItemClickListener:Lcom/miui/personalassistant/express/adapter/ExpressItemAdapter$OnItemClickListener;

    return-void
.end method
