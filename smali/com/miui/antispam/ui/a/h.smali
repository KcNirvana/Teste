.class public final Lcom/miui/antispam/ui/a/h;
.super Landroid/widget/ResourceCursorAdapter;
.source ""


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    const v0, 0x7f0300a0

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {p0, p1, v0, v1, v2}, Landroid/widget/ResourceCursorAdapter;-><init>(Landroid/content/Context;ILandroid/database/Cursor;Z)V

    iput-object p1, p0, Lcom/miui/antispam/ui/a/h;->mContext:Landroid/content/Context;

    return-void
.end method

.method private Vv(Landroid/widget/TextView;Ljava/lang/CharSequence;)V
    .locals 1

    new-instance v0, Lcom/miui/antispam/ui/a/n;

    invoke-direct {v0, p0, p1, p2}, Lcom/miui/antispam/ui/a/n;-><init>(Lcom/miui/antispam/ui/a/h;Landroid/widget/TextView;Ljava/lang/CharSequence;)V

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->post(Ljava/lang/Runnable;)Z

    return-void
.end method


# virtual methods
.method public bindView(Landroid/view/View;Landroid/content/Context;Landroid/database/Cursor;)V
    .locals 5

    const/4 v4, 0x0

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/antispam/ui/a/i;

    invoke-virtual {v0}, Lcom/miui/antispam/ui/a/i;->Vw()V

    invoke-static {}, Lmiui/telephony/TelephonyManager;->getDefault()Lmiui/telephony/TelephonyManager;

    move-result-object v1

    invoke-virtual {v1}, Lmiui/telephony/TelephonyManager;->isMultiSimEnabled()Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, v0, Lcom/miui/antispam/ui/a/i;->Wf:Landroid/widget/ImageView;

    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    const-string/jumbo v1, "simid"

    invoke-interface {p3, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p3, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    invoke-static {}, Lmiui/telephony/SubscriptionManager;->getDefault()Lmiui/telephony/SubscriptionManager;

    move-result-object v1

    long-to-int v2, v2

    invoke-virtual {v1, v2}, Lmiui/telephony/SubscriptionManager;->getSlotIdForSubscription(I)I

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, v0, Lcom/miui/antispam/ui/a/i;->Wf:Landroid/widget/ImageView;

    const v2, 0x7f020306

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    :goto_0
    const-string/jumbo v1, "date"

    invoke-interface {p3, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p3, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    iget-object v0, v0, Lcom/miui/antispam/ui/a/i;->Wd:Landroid/widget/TextView;

    invoke-static {p2, v2, v3, v4}, Lcom/miui/antispam/util/h;->XM(Landroid/content/Context;JZ)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/miui/antispam/ui/a/h;->Vv(Landroid/widget/TextView;Ljava/lang/CharSequence;)V

    return-void

    :cond_0
    const/4 v2, 0x1

    if-ne v2, v1, :cond_1

    iget-object v1, v0, Lcom/miui/antispam/ui/a/i;->Wf:Landroid/widget/ImageView;

    const v2, 0x7f020307

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    :cond_1
    iget-object v1, v0, Lcom/miui/antispam/ui/a/i;->Wf:Landroid/widget/ImageView;

    const v2, 0x7f020308

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    :cond_2
    iget-object v1, v0, Lcom/miui/antispam/ui/a/i;->Wf:Landroid/widget/ImageView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0
.end method

.method public newView(Landroid/content/Context;Landroid/database/Cursor;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 2

    invoke-super {p0, p1, p2, p3}, Landroid/widget/ResourceCursorAdapter;->newView(Landroid/content/Context;Landroid/database/Cursor;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/miui/antispam/ui/a/i;

    invoke-direct {v1, v0}, Lcom/miui/antispam/ui/a/i;-><init>(Landroid/view/View;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    return-object v0
.end method
