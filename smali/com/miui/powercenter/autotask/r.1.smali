.class Lcom/miui/powercenter/autotask/r;
.super Landroid/widget/CursorAdapter;
.source ""


# instance fields
.field final synthetic aLj:Lcom/miui/powercenter/autotask/AutoTaskManageActivity;


# direct methods
.method public constructor <init>(Lcom/miui/powercenter/autotask/AutoTaskManageActivity;Landroid/content/Context;)V
    .locals 2

    iput-object p1, p0, Lcom/miui/powercenter/autotask/r;->aLj:Lcom/miui/powercenter/autotask/AutoTaskManageActivity;

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p2, v0, v1}, Landroid/widget/CursorAdapter;-><init>(Landroid/content/Context;Landroid/database/Cursor;I)V

    return-void
.end method

.method private aXI(Landroid/content/Context;Lcom/miui/powercenter/autotask/AutoTask;)Ljava/lang/String;
    .locals 1

    invoke-static {p1, p2}, Lcom/miui/powercenter/autotask/w;->aYM(Landroid/content/Context;Lcom/miui/powercenter/autotask/AutoTask;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public bindView(Landroid/view/View;Landroid/content/Context;Landroid/database/Cursor;)V
    .locals 4

    new-instance v2, Lcom/miui/powercenter/autotask/AutoTask;

    invoke-direct {v2, p3}, Lcom/miui/powercenter/autotask/AutoTask;-><init>(Landroid/database/Cursor;)V

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/powercenter/autotask/q;

    iget-object v1, v0, Lcom/miui/powercenter/autotask/q;->title:Landroid/widget/TextView;

    invoke-static {p2, v2}, Lcom/miui/powercenter/autotask/w;->aYH(Landroid/content/Context;Lcom/miui/powercenter/autotask/AutoTask;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-static {v2}, Lcom/miui/powercenter/autotask/w;->aYI(Lcom/miui/powercenter/autotask/AutoTask;)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v3, "battery_level_up"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string/jumbo v3, "battery_level_down"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    :cond_0
    iget-object v1, v0, Lcom/miui/powercenter/autotask/q;->icon:Landroid/widget/ImageView;

    const v3, 0x7f020072

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    :cond_1
    :goto_0
    iget-object v1, v0, Lcom/miui/powercenter/autotask/q;->title:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {p0, v1, v2}, Lcom/miui/powercenter/autotask/r;->aXI(Landroid/content/Context;Lcom/miui/powercenter/autotask/AutoTask;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_4

    iget-object v3, v0, Lcom/miui/powercenter/autotask/q;->aLi:Landroid/widget/TextView;

    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_1
    iget-object v1, v0, Lcom/miui/powercenter/autotask/q;->slidingButton:Lmiui/widget/SlidingButton;

    invoke-virtual {v2}, Lcom/miui/powercenter/autotask/AutoTask;->aXT()Z

    move-result v3

    invoke-virtual {v1, v3}, Lmiui/widget/SlidingButton;->setChecked(Z)V

    iget-object v3, v0, Lcom/miui/powercenter/autotask/q;->slidingButton:Lmiui/widget/SlidingButton;

    iget-object v1, p0, Lcom/miui/powercenter/autotask/r;->aLj:Lcom/miui/powercenter/autotask/AutoTaskManageActivity;

    invoke-static {v1}, Lcom/miui/powercenter/autotask/AutoTaskManageActivity;->aXF(Lcom/miui/powercenter/autotask/AutoTaskManageActivity;)Lmiui/widget/EditableListView;

    move-result-object v1

    invoke-virtual {v1}, Lmiui/widget/EditableListView;->isInActionMode()Z

    move-result v1

    if-eqz v1, :cond_5

    const/4 v1, 0x4

    :goto_2
    invoke-virtual {v3, v1}, Lmiui/widget/SlidingButton;->setVisibility(I)V

    iget-object v0, v0, Lcom/miui/powercenter/autotask/q;->slidingButton:Lmiui/widget/SlidingButton;

    new-instance v1, Lcom/miui/powercenter/autotask/S;

    invoke-direct {v1, p0, v2}, Lcom/miui/powercenter/autotask/S;-><init>(Lcom/miui/powercenter/autotask/r;Lcom/miui/powercenter/autotask/AutoTask;)V

    invoke-virtual {v0, v1}, Lmiui/widget/SlidingButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    return-void

    :cond_2
    const-string/jumbo v3, "hour_minute"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v1, v0, Lcom/miui/powercenter/autotask/q;->icon:Landroid/widget/ImageView;

    const v3, 0x7f0202a0

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    :cond_3
    const-string/jumbo v3, "hour_minute_duration"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, v0, Lcom/miui/powercenter/autotask/q;->icon:Landroid/widget/ImageView;

    const v3, 0x7f020336

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    :cond_4
    iget-object v1, v0, Lcom/miui/powercenter/autotask/q;->aLi:Landroid/widget/TextView;

    const/16 v3, 0x8

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_1

    :cond_5
    const/4 v1, 0x0

    goto :goto_2
.end method

.method public newView(Landroid/content/Context;Landroid/database/Cursor;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f03010c

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p3, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    new-instance v2, Lcom/miui/powercenter/autotask/q;

    const/4 v0, 0x0

    invoke-direct {v2, v0}, Lcom/miui/powercenter/autotask/q;-><init>(Lcom/miui/powercenter/autotask/q;)V

    const v0, 0x7f0a0038

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, v2, Lcom/miui/powercenter/autotask/q;->icon:Landroid/widget/ImageView;

    const v0, 0x7f0a00b0

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v2, Lcom/miui/powercenter/autotask/q;->title:Landroid/widget/TextView;

    const v0, 0x7f0a017a

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v2, Lcom/miui/powercenter/autotask/q;->aLi:Landroid/widget/TextView;

    const v0, 0x7f0a0324

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lmiui/widget/SlidingButton;

    iput-object v0, v2, Lcom/miui/powercenter/autotask/q;->slidingButton:Lmiui/widget/SlidingButton;

    invoke-virtual {v1, v2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    return-object v1
.end method
