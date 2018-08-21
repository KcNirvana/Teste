.class Lcom/miui/personalassistant/ui/adapter/SettingOrderAdapter$EntryHolder;
.super Ljava/lang/Object;
.source "SettingOrderAdapter.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/personalassistant/ui/adapter/SettingOrderAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "EntryHolder"
.end annotation


# instance fields
.field private mDesc:Landroid/widget/TextView;

.field private mDragTag:Landroid/view/View;

.field private mIcon:Landroid/widget/ImageView;

.field private mIvOpe:Landroid/widget/ImageView;

.field private mName:Landroid/widget/TextView;

.field private mPosition:I

.field final synthetic this$0:Lcom/miui/personalassistant/ui/adapter/SettingOrderAdapter;


# direct methods
.method public constructor <init>(Lcom/miui/personalassistant/ui/adapter/SettingOrderAdapter;Landroid/view/View;)V
    .locals 1

    iput-object p1, p0, Lcom/miui/personalassistant/ui/adapter/SettingOrderAdapter$EntryHolder;->this$0:Lcom/miui/personalassistant/ui/adapter/SettingOrderAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const v0, 0x1b0900d6

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/miui/personalassistant/ui/adapter/SettingOrderAdapter$EntryHolder;->mName:Landroid/widget/TextView;

    const v0, 0x1b090385

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/miui/personalassistant/ui/adapter/SettingOrderAdapter$EntryHolder;->mDesc:Landroid/widget/TextView;

    const v0, 0x1b090384

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/miui/personalassistant/ui/adapter/SettingOrderAdapter$EntryHolder;->mIcon:Landroid/widget/ImageView;

    const v0, 0x1b090383

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/miui/personalassistant/ui/adapter/SettingOrderAdapter$EntryHolder;->mIvOpe:Landroid/widget/ImageView;

    const v0, 0x1b090386

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/personalassistant/ui/adapter/SettingOrderAdapter$EntryHolder;->mDragTag:Landroid/view/View;

    return-void
.end method

.method static synthetic access$300(Lcom/miui/personalassistant/ui/adapter/SettingOrderAdapter$EntryHolder;)I
    .locals 1

    iget v0, p0, Lcom/miui/personalassistant/ui/adapter/SettingOrderAdapter$EntryHolder;->mPosition:I

    return v0
.end method


# virtual methods
.method public bindEntry(I)V
    .locals 6

    iput p1, p0, Lcom/miui/personalassistant/ui/adapter/SettingOrderAdapter$EntryHolder;->mPosition:I

    iget-object v3, p0, Lcom/miui/personalassistant/ui/adapter/SettingOrderAdapter$EntryHolder;->this$0:Lcom/miui/personalassistant/ui/adapter/SettingOrderAdapter;

    invoke-virtual {v3, p1}, Lcom/miui/personalassistant/ui/adapter/SettingOrderAdapter;->getItem(I)Lcom/miui/personalassistant/model/SettingItem;

    move-result-object v1

    invoke-virtual {v1}, Lcom/miui/personalassistant/model/SettingItem;->getPrefKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1}, Lcom/miui/personalassistant/model/SettingItem;->getListIconId()I

    move-result v2

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v3, p0, Lcom/miui/personalassistant/ui/adapter/SettingOrderAdapter$EntryHolder;->mName:Landroid/widget/TextView;

    invoke-virtual {v1}, Lcom/miui/personalassistant/model/SettingItem;->getTitleId()I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(I)V

    iget-object v3, p0, Lcom/miui/personalassistant/ui/adapter/SettingOrderAdapter$EntryHolder;->mDesc:Landroid/widget/TextView;

    invoke-virtual {v1}, Lcom/miui/personalassistant/model/SettingItem;->getContentId()I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(I)V

    iget-object v3, p0, Lcom/miui/personalassistant/ui/adapter/SettingOrderAdapter$EntryHolder;->this$0:Lcom/miui/personalassistant/ui/adapter/SettingOrderAdapter;

    invoke-static {v3}, Lcom/miui/personalassistant/ui/adapter/SettingOrderAdapter;->access$000(Lcom/miui/personalassistant/ui/adapter/SettingOrderAdapter;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/miui/personalassistant/ui/adapter/SettingOrderAdapter$EntryHolder;->mDragTag:Landroid/view/View;

    invoke-virtual {v3, p0}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    iget-object v3, p0, Lcom/miui/personalassistant/ui/adapter/SettingOrderAdapter$EntryHolder;->mDragTag:Landroid/view/View;

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-virtual {v3, v4}, Landroid/view/View;->setAlpha(F)V

    iget-object v3, p0, Lcom/miui/personalassistant/ui/adapter/SettingOrderAdapter$EntryHolder;->mIvOpe:Landroid/widget/ImageView;

    const v4, 0x1b020313

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object v3, p0, Lcom/miui/personalassistant/ui/adapter/SettingOrderAdapter$EntryHolder;->mIvOpe:Landroid/widget/ImageView;

    iget-object v4, p0, Lcom/miui/personalassistant/ui/adapter/SettingOrderAdapter$EntryHolder;->this$0:Lcom/miui/personalassistant/ui/adapter/SettingOrderAdapter;

    invoke-static {v4}, Lcom/miui/personalassistant/ui/adapter/SettingOrderAdapter;->access$100(Lcom/miui/personalassistant/ui/adapter/SettingOrderAdapter;)Landroid/content/Context;

    move-result-object v4

    const v5, 0x1b0b024b

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    :goto_1
    if-eqz v2, :cond_1

    const/4 v3, -0x1

    if-eq v2, v3, :cond_1

    iget-object v3, p0, Lcom/miui/personalassistant/ui/adapter/SettingOrderAdapter$EntryHolder;->mIcon:Landroid/widget/ImageView;

    invoke-virtual {v3, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    :cond_1
    iget-object v3, p0, Lcom/miui/personalassistant/ui/adapter/SettingOrderAdapter$EntryHolder;->mIvOpe:Landroid/widget/ImageView;

    new-instance v4, Lcom/miui/personalassistant/ui/adapter/SettingOrderAdapter$EntryHolder$1;

    invoke-direct {v4, p0, v1}, Lcom/miui/personalassistant/ui/adapter/SettingOrderAdapter$EntryHolder$1;-><init>(Lcom/miui/personalassistant/ui/adapter/SettingOrderAdapter$EntryHolder;Lcom/miui/personalassistant/model/SettingItem;)V

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0

    :cond_2
    iget-object v3, p0, Lcom/miui/personalassistant/ui/adapter/SettingOrderAdapter$EntryHolder;->mDragTag:Landroid/view/View;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    iget-object v3, p0, Lcom/miui/personalassistant/ui/adapter/SettingOrderAdapter$EntryHolder;->mDragTag:Landroid/view/View;

    const/high16 v4, 0x3f000000    # 0.5f

    invoke-virtual {v3, v4}, Landroid/view/View;->setAlpha(F)V

    iget-object v3, p0, Lcom/miui/personalassistant/ui/adapter/SettingOrderAdapter$EntryHolder;->mIvOpe:Landroid/widget/ImageView;

    const v4, 0x1b02030b

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object v3, p0, Lcom/miui/personalassistant/ui/adapter/SettingOrderAdapter$EntryHolder;->mIvOpe:Landroid/widget/ImageView;

    iget-object v4, p0, Lcom/miui/personalassistant/ui/adapter/SettingOrderAdapter$EntryHolder;->this$0:Lcom/miui/personalassistant/ui/adapter/SettingOrderAdapter;

    invoke-static {v4}, Lcom/miui/personalassistant/ui/adapter/SettingOrderAdapter;->access$100(Lcom/miui/personalassistant/ui/adapter/SettingOrderAdapter;)Landroid/content/Context;

    move-result-object v4

    const v5, 0x1b0b024a

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_1
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 2

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/miui/personalassistant/ui/adapter/SettingOrderAdapter$EntryHolder;->this$0:Lcom/miui/personalassistant/ui/adapter/SettingOrderAdapter;

    invoke-static {v0}, Lcom/miui/personalassistant/ui/adapter/SettingOrderAdapter;->access$400(Lcom/miui/personalassistant/ui/adapter/SettingOrderAdapter;)Lmiui/widget/DynamicListView;

    move-result-object v0

    iget v1, p0, Lcom/miui/personalassistant/ui/adapter/SettingOrderAdapter$EntryHolder;->mPosition:I

    invoke-virtual {v0, v1}, Lmiui/widget/DynamicListView;->startDragging(I)V

    :cond_0
    const/4 v0, 0x0

    return v0
.end method
