.class public Lcom/alipay/android/app/flybird/ui/window/widget/SettingChannelListAdapter;
.super Landroid/widget/BaseAdapter;
.source "SettingChannelListAdapter.java"


# instance fields
.field protected mChannels:[Ljava/lang/String;

.field private mClickItem:I

.field private mContext:Landroid/app/Activity;


# direct methods
.method public constructor <init>(Landroid/content/Context;II)V
    .locals 1

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/alipay/android/app/flybird/ui/window/widget/SettingChannelListAdapter;->mClickItem:I

    check-cast p1, Landroid/app/Activity;

    iput-object p1, p0, Lcom/alipay/android/app/flybird/ui/window/widget/SettingChannelListAdapter;->mContext:Landroid/app/Activity;

    return-void
.end method

.method static synthetic access$002(Lcom/alipay/android/app/flybird/ui/window/widget/SettingChannelListAdapter;I)I
    .locals 0

    iput p1, p0, Lcom/alipay/android/app/flybird/ui/window/widget/SettingChannelListAdapter;->mClickItem:I

    return p1
.end method

.method static synthetic access$100(Lcom/alipay/android/app/flybird/ui/window/widget/SettingChannelListAdapter;II)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/alipay/android/app/flybird/ui/window/widget/SettingChannelListAdapter;->switchItem(II)V

    return-void
.end method

.method private switchItem(II)V
    .locals 3

    if-ltz p2, :cond_0

    iget-object v0, p0, Lcom/alipay/android/app/flybird/ui/window/widget/SettingChannelListAdapter;->mChannels:[Ljava/lang/String;

    array-length v0, v0

    if-lt p2, v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/alipay/android/app/flybird/ui/window/widget/SettingChannelListAdapter;->mChannels:[Ljava/lang/String;

    aget-object v0, v0, p1

    iget-object v1, p0, Lcom/alipay/android/app/flybird/ui/window/widget/SettingChannelListAdapter;->mChannels:[Ljava/lang/String;

    iget-object v2, p0, Lcom/alipay/android/app/flybird/ui/window/widget/SettingChannelListAdapter;->mChannels:[Ljava/lang/String;

    aget-object v2, v2, p2

    aput-object v2, v1, p1

    iget-object v1, p0, Lcom/alipay/android/app/flybird/ui/window/widget/SettingChannelListAdapter;->mChannels:[Ljava/lang/String;

    aput-object v0, v1, p2

    iput p2, p0, Lcom/alipay/android/app/flybird/ui/window/widget/SettingChannelListAdapter;->mClickItem:I

    invoke-static {}, Lcom/alipay/android/app/ui/quickpay/util/a;->a()Lcom/alipay/android/app/ui/quickpay/util/a;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/alipay/android/app/ui/quickpay/util/a;->a(II)V

    goto :goto_0
.end method


# virtual methods
.method public getCount()I
    .locals 1

    iget-object v0, p0, Lcom/alipay/android/app/flybird/ui/window/widget/SettingChannelListAdapter;->mChannels:[Ljava/lang/String;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/alipay/android/app/flybird/ui/window/widget/SettingChannelListAdapter;->mChannels:[Ljava/lang/String;

    array-length v0, v0

    goto :goto_0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/alipay/android/app/flybird/ui/window/widget/SettingChannelListAdapter;->mChannels:[Ljava/lang/String;

    aget-object v0, v0, p1

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2

    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 6

    const/16 v5, 0x8

    const/4 v4, 0x0

    iget-object v0, p0, Lcom/alipay/android/app/flybird/ui/window/widget/SettingChannelListAdapter;->mChannels:[Ljava/lang/String;

    aget-object v1, v0, p1

    iget-object v0, p0, Lcom/alipay/android/app/flybird/ui/window/widget/SettingChannelListAdapter;->mContext:Landroid/app/Activity;

    const-string/jumbo v2, "mini_list_item_handle_right"

    invoke-static {v2}, Lcom/alipay/android/app/g/i;->e(Ljava/lang/String;)I

    move-result v2

    const/4 v3, 0x0

    invoke-static {v0, v2, v3}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    const-string/jumbo v0, "mini_block_item_normal_bg"

    invoke-static {v0}, Lcom/alipay/android/app/g/i;->d(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v2, v0}, Landroid/view/View;->setBackgroundResource(I)V

    new-instance v0, Lcom/alipay/android/app/flybird/ui/window/widget/SettingChannelListAdapter$1;

    invoke-direct {v0, p0, p1}, Lcom/alipay/android/app/flybird/ui/window/widget/SettingChannelListAdapter$1;-><init>(Lcom/alipay/android/app/flybird/ui/window/widget/SettingChannelListAdapter;I)V

    invoke-virtual {v2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const-string/jumbo v0, "drag_text"

    invoke-static {v0}, Lcom/alipay/android/app/g/i;->a(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    if-nez v0, :cond_0

    move-object v0, v2

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const-string/jumbo v0, "drag_up"

    invoke-static {v0}, Lcom/alipay/android/app/g/i;->a(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    const-string/jumbo v1, "drag_down"

    invoke-static {v1}, Lcom/alipay/android/app/g/i;->a(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    new-instance v3, Lcom/alipay/android/app/flybird/ui/window/widget/SettingChannelListAdapter$2;

    invoke-direct {v3, p0, p1}, Lcom/alipay/android/app/flybird/ui/window/widget/SettingChannelListAdapter$2;-><init>(Lcom/alipay/android/app/flybird/ui/window/widget/SettingChannelListAdapter;I)V

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v3, Lcom/alipay/android/app/flybird/ui/window/widget/SettingChannelListAdapter$3;

    invoke-direct {v3, p0, p1}, Lcom/alipay/android/app/flybird/ui/window/widget/SettingChannelListAdapter$3;-><init>(Lcom/alipay/android/app/flybird/ui/window/widget/SettingChannelListAdapter;I)V

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget v3, p0, Lcom/alipay/android/app/flybird/ui/window/widget/SettingChannelListAdapter;->mClickItem:I

    if-ne p1, v3, :cond_3

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    iget v3, p0, Lcom/alipay/android/app/flybird/ui/window/widget/SettingChannelListAdapter;->mClickItem:I

    if-nez v3, :cond_1

    const-string/jumbo v3, "alipay_msp_drag_up_disabled"

    invoke-static {v3}, Lcom/alipay/android/app/g/i;->d(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    :goto_1
    iget v0, p0, Lcom/alipay/android/app/flybird/ui/window/widget/SettingChannelListAdapter;->mClickItem:I

    iget-object v3, p0, Lcom/alipay/android/app/flybird/ui/window/widget/SettingChannelListAdapter;->mChannels:[Ljava/lang/String;

    array-length v3, v3

    add-int/lit8 v3, v3, -0x1

    if-ne v0, v3, :cond_2

    const-string/jumbo v0, "alipay_msp_drag_down_disabled"

    invoke-static {v0}, Lcom/alipay/android/app/g/i;->d(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    :goto_2
    move-object v0, v2

    goto :goto_0

    :cond_1
    const-string/jumbo v3, "alipay_msp_drag_up"

    invoke-static {v3}, Lcom/alipay/android/app/g/i;->d(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_1

    :cond_2
    const-string/jumbo v0, "alipay_msp_drag_down"

    invoke-static {v0}, Lcom/alipay/android/app/g/i;->d(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_2

    :cond_3
    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    invoke-virtual {v1, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_2
.end method

.method public setList([Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/android/app/flybird/ui/window/widget/SettingChannelListAdapter;->mChannels:[Ljava/lang/String;

    return-void
.end method
