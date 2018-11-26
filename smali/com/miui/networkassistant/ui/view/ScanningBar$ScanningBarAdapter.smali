.class Lcom/miui/networkassistant/ui/view/ScanningBar$ScanningBarAdapter;
.super Landroid/widget/BaseAdapter;
.source ""


# instance fields
.field private mContext:Landroid/content/Context;

.field protected mInflater:Landroid/view/LayoutInflater;

.field private mItems:Ljava/util/List;

.field final synthetic this$0:Lcom/miui/networkassistant/ui/view/ScanningBar;


# direct methods
.method public constructor <init>(Lcom/miui/networkassistant/ui/view/ScanningBar;Landroid/content/Context;Ljava/util/List;)V
    .locals 1

    iput-object p1, p0, Lcom/miui/networkassistant/ui/view/ScanningBar$ScanningBarAdapter;->this$0:Lcom/miui/networkassistant/ui/view/ScanningBar;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    iput-object p2, p0, Lcom/miui/networkassistant/ui/view/ScanningBar$ScanningBarAdapter;->mContext:Landroid/content/Context;

    iput-object p3, p0, Lcom/miui/networkassistant/ui/view/ScanningBar$ScanningBarAdapter;->mItems:Ljava/util/List;

    iget-object v0, p0, Lcom/miui/networkassistant/ui/view/ScanningBar$ScanningBarAdapter;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/networkassistant/ui/view/ScanningBar$ScanningBarAdapter;->mInflater:Landroid/view/LayoutInflater;

    return-void
.end method


# virtual methods
.method public bindView(Landroid/view/View;Landroid/content/Context;I)V
    .locals 6

    const v5, 0x7f0a0275

    const/4 v4, 0x0

    const v3, 0x7f0a0274

    const/16 v2, 0x8

    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    iget-object v0, p0, Lcom/miui/networkassistant/ui/view/ScanningBar$ScanningBarAdapter;->mItems:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/networkassistant/ui/view/ScanningBar$ScanningBarAdapter;->mItems:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-le v0, p3, :cond_0

    const v0, 0x7f0a0273

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget-object v1, p0, Lcom/miui/networkassistant/ui/view/ScanningBar$ScanningBarAdapter;->mItems:Ljava/util/List;

    invoke-interface {v1, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/miui/networkassistant/ui/view/ScanningBar$ScanningBarAdapter;->this$0:Lcom/miui/networkassistant/ui/view/ScanningBar;

    invoke-static {v0}, Lcom/miui/networkassistant/ui/view/ScanningBar;->-get0(Lcom/miui/networkassistant/ui/view/ScanningBar;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    :cond_0
    :goto_0
    return-void

    :pswitch_0
    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {p1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    :pswitch_1
    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    :pswitch_2
    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {p1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public getCount()I
    .locals 1

    iget-object v0, p0, Lcom/miui/networkassistant/ui/view/ScanningBar$ScanningBarAdapter;->mItems:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2

    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 1

    if-nez p2, :cond_0

    iget-object v0, p0, Lcom/miui/networkassistant/ui/view/ScanningBar$ScanningBarAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v0, p3}, Lcom/miui/networkassistant/ui/view/ScanningBar$ScanningBarAdapter;->newView(Landroid/content/Context;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    :cond_0
    iget-object v0, p0, Lcom/miui/networkassistant/ui/view/ScanningBar$ScanningBarAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {p0, p2, v0, p1}, Lcom/miui/networkassistant/ui/view/ScanningBar$ScanningBarAdapter;->bindView(Landroid/view/View;Landroid/content/Context;I)V

    return-object p2
.end method

.method public newView(Landroid/content/Context;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/miui/networkassistant/ui/view/ScanningBar$ScanningBarAdapter;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/networkassistant/ui/view/ScanningBar$ScanningBarAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v1, 0x7f0300dc

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    return-object v0

    :cond_0
    return-object v2
.end method
