.class public Lcom/miui/personalassistant/ui/adapter/BookAllAdapter;
.super Lcom/miui/personalassistant/ui/widget/SectionedBaseAdapter;
.source "BookAllAdapter.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "BookAllAdapter"


# instance fields
.field private mBookView:Lcom/miui/personalassistant/ui/adapter/BookView;

.field private mContext:Landroid/content/Context;

.field private mInflater:Landroid/view/LayoutInflater;

.field private mList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/miui/personalassistant/model/BaseEventGroup;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    invoke-direct {p0}, Lcom/miui/personalassistant/ui/widget/SectionedBaseAdapter;-><init>()V

    iput-object p1, p0, Lcom/miui/personalassistant/ui/adapter/BookAllAdapter;->mContext:Landroid/content/Context;

    iget-object v0, p0, Lcom/miui/personalassistant/ui/adapter/BookAllAdapter;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/personalassistant/ui/adapter/BookAllAdapter;->mInflater:Landroid/view/LayoutInflater;

    new-instance v0, Lcom/miui/personalassistant/ui/adapter/BookView;

    iget-object v1, p0, Lcom/miui/personalassistant/ui/adapter/BookAllAdapter;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/miui/personalassistant/ui/adapter/BookView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/miui/personalassistant/ui/adapter/BookAllAdapter;->mBookView:Lcom/miui/personalassistant/ui/adapter/BookView;

    return-void
.end method

.method static synthetic access$000(Lcom/miui/personalassistant/ui/adapter/BookAllAdapter;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/miui/personalassistant/ui/adapter/BookAllAdapter;->mContext:Landroid/content/Context;

    return-object v0
.end method


# virtual methods
.method public getCountForSection(I)I
    .locals 2

    iget-object v1, p0, Lcom/miui/personalassistant/ui/adapter/BookAllAdapter;->mList:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/personalassistant/model/BaseEventGroup;

    invoke-virtual {v0}, Lcom/miui/personalassistant/model/BaseEventGroup;->getEvent()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    return v1
.end method

.method public getItem(II)Ljava/lang/Object;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getItemId(II)J
    .locals 2

    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getItemView(IILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 4

    const/4 v3, 0x0

    iget-object v1, p0, Lcom/miui/personalassistant/ui/adapter/BookAllAdapter;->mList:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/miui/personalassistant/model/BaseEventGroup;

    invoke-virtual {v1}, Lcom/miui/personalassistant/model/BaseEventGroup;->getEvent()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/calendar/event/schema/BaseEvent;

    iget v1, v0, Lcom/miui/calendar/event/schema/BaseEvent;->eventType:I

    packed-switch v1, :pswitch_data_0

    :goto_0
    :pswitch_0
    new-instance v1, Lcom/miui/personalassistant/ui/adapter/BookAllAdapter$1;

    invoke-direct {v1, p0, v0}, Lcom/miui/personalassistant/ui/adapter/BookAllAdapter$1;-><init>(Lcom/miui/personalassistant/ui/adapter/BookAllAdapter;Lcom/miui/calendar/event/schema/BaseEvent;)V

    invoke-virtual {p3, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v1, p0, Lcom/miui/personalassistant/ui/adapter/BookAllAdapter;->mBookView:Lcom/miui/personalassistant/ui/adapter/BookView;

    invoke-virtual {v1, p3, v0}, Lcom/miui/personalassistant/ui/adapter/BookView;->updateView(Landroid/view/View;Lcom/miui/calendar/event/schema/BaseEvent;)Landroid/view/View;

    move-result-object v1

    return-object v1

    :pswitch_1
    iget-object v1, p0, Lcom/miui/personalassistant/ui/adapter/BookAllAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v2, 0x1b040032

    invoke-virtual {v1, v2, p4, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p3

    goto :goto_0

    :pswitch_2
    iget-object v1, p0, Lcom/miui/personalassistant/ui/adapter/BookAllAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v2, 0x1b040035

    invoke-virtual {v1, v2, p4, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p3

    goto :goto_0

    :pswitch_3
    iget-object v1, p0, Lcom/miui/personalassistant/ui/adapter/BookAllAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v2, 0x1b040034

    invoke-virtual {v1, v2, p4, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p3

    goto :goto_0

    :pswitch_4
    iget-object v1, p0, Lcom/miui/personalassistant/ui/adapter/BookAllAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v2, 0x1b040033

    invoke-virtual {v1, v2, p4, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p3

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public getSectionCount()I
    .locals 1

    iget-object v0, p0, Lcom/miui/personalassistant/ui/adapter/BookAllAdapter;->mList:Ljava/util/List;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/miui/personalassistant/ui/adapter/BookAllAdapter;->mList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    goto :goto_0
.end method

.method public getSectionHeaderView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 4

    if-nez p2, :cond_0

    iget-object v1, p0, Lcom/miui/personalassistant/ui/adapter/BookAllAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v2, 0x1b04002f

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    :goto_0
    const v1, 0x1b0900f0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iget-object v2, p0, Lcom/miui/personalassistant/ui/adapter/BookAllAdapter;->mList:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/miui/personalassistant/model/BaseEventGroup;

    invoke-virtual {v2}, Lcom/miui/personalassistant/model/BaseEventGroup;->getDate()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-object v0

    :cond_0
    move-object v0, p2

    check-cast v0, Landroid/widget/LinearLayout;

    goto :goto_0
.end method

.method public setData(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/miui/personalassistant/model/BaseEventGroup;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/miui/personalassistant/ui/adapter/BookAllAdapter;->mList:Ljava/util/List;

    invoke-virtual {p0}, Lcom/miui/personalassistant/ui/adapter/BookAllAdapter;->notifyDataSetChanged()V

    return-void
.end method
