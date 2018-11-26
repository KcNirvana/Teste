.class public final Lcom/miui/antispam/ui/a/k;
.super Lcom/miui/antispam/ui/a/d;
.source ""


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/miui/antispam/ui/a/d;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public bindView(Landroid/view/View;Landroid/content/Context;Landroid/database/Cursor;)V
    .locals 11

    invoke-super {p0, p1, p2, p3}, Lcom/miui/antispam/ui/a/d;->bindView(Landroid/view/View;Landroid/content/Context;Landroid/database/Cursor;)V

    const-string/jumbo v0, "address"

    invoke-interface {p3, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p3, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v0, "message_count"

    invoke-interface {p3, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p3, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    const-string/jumbo v0, "unread_count"

    invoke-interface {p3, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p3, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    const-string/jumbo v0, "snippet"

    invoke-interface {p3, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p3, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v0, "snippet_cs"

    invoke-interface {p3, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p3, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    const-string/jumbo v0, "date"

    invoke-interface {p3, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p3, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    const-string/jumbo v0, "reason"

    invoke-interface {p3, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p3, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v8

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/antispam/ui/a/e;

    iget-object v9, v0, Lcom/miui/antispam/ui/a/e;->title:Landroid/widget/TextView;

    invoke-virtual {v9, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v9, v0, Lcom/miui/antispam/ui/a/e;->title:Landroid/widget/TextView;

    invoke-virtual {v9, v1}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    iget-object v9, p0, Lcom/miui/antispam/ui/a/k;->VJ:Lcom/miui/antispam/util/a;

    new-instance v10, Lcom/miui/antispam/ui/a/o;

    invoke-direct {v10, p0, v0}, Lcom/miui/antispam/ui/a/o;-><init>(Lcom/miui/antispam/ui/a/k;Lcom/miui/antispam/ui/a/e;)V

    invoke-virtual {v9, v1, v10}, Lcom/miui/antispam/util/a;->Xr(Ljava/lang/String;Lcom/miui/antispam/util/b;)Landroid/util/Pair;

    move-result-object v9

    if-eqz v9, :cond_1

    iget-object v1, v9, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Ljava/lang/CharSequence;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_1

    iget-object v10, v0, Lcom/miui/antispam/ui/a/e;->title:Landroid/widget/TextView;

    iget-object v1, v9, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Ljava/lang/CharSequence;

    invoke-virtual {v10, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_1
    iget-boolean v1, p0, Lcom/miui/antispam/ui/a/k;->VK:Z

    if-nez v1, :cond_2

    if-lez v4, :cond_2

    iget-object v1, v0, Lcom/miui/antispam/ui/a/e;->title:Landroid/widget/TextView;

    const-string/jumbo v3, "#ed5137"

    invoke-static {v3}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v1, v0, Lcom/miui/antispam/ui/a/e;->VM:Landroid/widget/TextView;

    const-string/jumbo v3, "#ed5137"

    invoke-static {v3}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v1, v0, Lcom/miui/antispam/ui/a/e;->VM:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/miui/antispam/ui/a/k;->mContext:Landroid/content/Context;

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Object;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v10, 0x0

    aput-object v4, v9, v10

    const v4, 0x7f070034

    invoke-virtual {v3, v4, v9}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_0
    iget-object v1, v0, Lcom/miui/antispam/ui/a/e;->VO:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/miui/antispam/ui/a/k;->mContext:Landroid/content/Context;

    const/4 v4, 0x1

    invoke-static {v3, v6, v7, v4}, Lcom/miui/antispam/util/h;->XM(Landroid/content/Context;JZ)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    if-eqz v5, :cond_3

    new-instance v1, Lcom/google/android/mms/pdu/EncodedStringValue;

    invoke-static {v2}, Lcom/google/android/mms/pdu/MiuiPduPersister;->getBytes(Ljava/lang/String;)[B

    move-result-object v2

    invoke-direct {v1, v5, v2}, Lcom/google/android/mms/pdu/EncodedStringValue;-><init>(I[B)V

    invoke-virtual {v1}, Lcom/google/android/mms/pdu/EncodedStringValue;->getString()Ljava/lang/String;

    move-result-object v1

    :goto_1
    iget-object v2, v0, Lcom/miui/antispam/ui/a/e;->VN:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    packed-switch v8, :pswitch_data_0

    :pswitch_0
    const v1, 0x7f0700ae

    :goto_2
    iget-object v0, v0, Lcom/miui/antispam/ui/a/e;->VP:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    return-void

    :cond_2
    iget-object v1, v0, Lcom/miui/antispam/ui/a/e;->title:Landroid/widget/TextView;

    iget-object v4, p0, Lcom/miui/antispam/ui/a/k;->mContext:Landroid/content/Context;

    sget v9, Lmiui/R$style;->TextAppearance_List_Primary:I

    invoke-virtual {v1, v4, v9}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    iget-object v1, v0, Lcom/miui/antispam/ui/a/e;->VM:Landroid/widget/TextView;

    iget-object v4, p0, Lcom/miui/antispam/ui/a/k;->mContext:Landroid/content/Context;

    sget v9, Lmiui/R$style;->TextAppearance_List_Secondary:I

    invoke-virtual {v1, v4, v9}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    iget-object v1, v0, Lcom/miui/antispam/ui/a/e;->VM:Landroid/widget/TextView;

    iget-object v4, p0, Lcom/miui/antispam/ui/a/k;->mContext:Landroid/content/Context;

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Object;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v10, 0x0

    aput-object v3, v9, v10

    const v3, 0x7f070034

    invoke-virtual {v4, v3, v9}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :pswitch_1
    const v1, 0x7f0700ae

    goto :goto_2

    :pswitch_2
    const v1, 0x7f0700af

    goto :goto_2

    :pswitch_3
    const v1, 0x7f0700b0

    goto :goto_2

    :pswitch_4
    const v1, 0x7f0700b1

    goto :goto_2

    :pswitch_5
    const v1, 0x7f0700b6

    goto :goto_2

    :pswitch_6
    const v1, 0x7f0700b2

    goto :goto_2

    :pswitch_7
    const v1, 0x7f0700b5

    goto :goto_2

    :pswitch_8
    const v1, 0x7f0700b4

    goto :goto_2

    :pswitch_9
    const v1, 0x7f0700b3

    goto :goto_2

    :pswitch_a
    const v1, 0x7f0700b7

    goto :goto_2

    :cond_3
    move-object v1, v2

    goto :goto_1

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_1
        :pswitch_4
        :pswitch_1
        :pswitch_2
        :pswitch_8
        :pswitch_5
        :pswitch_7
        :pswitch_9
        :pswitch_0
        :pswitch_6
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_a
    .end packed-switch
.end method
