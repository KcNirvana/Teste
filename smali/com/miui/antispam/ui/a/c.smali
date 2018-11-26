.class public final Lcom/miui/antispam/ui/a/c;
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
    .locals 10

    invoke-super {p0, p1, p2, p3}, Lcom/miui/antispam/ui/a/d;->bindView(Landroid/view/View;Landroid/content/Context;Landroid/database/Cursor;)V

    const-string/jumbo v0, "number"

    invoke-interface {p3, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p3, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v0, "presentation"

    invoke-interface {p3, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p3, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    const-string/jumbo v0, "unRead"

    invoke-interface {p3, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p3, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    const-string/jumbo v0, "total"

    invoke-interface {p3, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p3, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    const-string/jumbo v0, "date"

    invoke-interface {p3, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p3, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    const-string/jumbo v0, "firewalltype"

    invoke-interface {p3, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p3, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/antispam/ui/a/e;

    const/4 v8, 0x1

    if-eq v1, v8, :cond_2

    iget-object v1, v0, Lcom/miui/antispam/ui/a/e;->title:Landroid/widget/TextView;

    const v8, 0x7f070035

    invoke-virtual {v1, v8}, Landroid/widget/TextView;->setText(I)V

    :cond_0
    :goto_0
    if-lez v3, :cond_3

    iget-object v1, v0, Lcom/miui/antispam/ui/a/e;->title:Landroid/widget/TextView;

    const-string/jumbo v4, "#ed5137"

    invoke-static {v4}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v1, v0, Lcom/miui/antispam/ui/a/e;->VM:Landroid/widget/TextView;

    const-string/jumbo v4, "#ed5137"

    invoke-static {v4}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v1, v0, Lcom/miui/antispam/ui/a/e;->VM:Landroid/widget/TextView;

    iget-object v4, p0, Lcom/miui/antispam/ui/a/c;->mContext:Landroid/content/Context;

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v9, 0x0

    aput-object v3, v8, v9

    const v3, 0x7f070034

    invoke-virtual {v4, v3, v8}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_1
    invoke-static {p2, v2}, Lmiui/telephony/PhoneNumberUtils;->parseTelocationString(Landroid/content/Context;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    iget-object v2, v0, Lcom/miui/antispam/ui/a/e;->VN:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_1
    iget-object v1, v0, Lcom/miui/antispam/ui/a/e;->VO:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/miui/antispam/ui/a/c;->mContext:Landroid/content/Context;

    const/4 v3, 0x1

    invoke-static {v2, v6, v7, v3}, Lcom/miui/antispam/util/h;->XM(Landroid/content/Context;JZ)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    packed-switch v5, :pswitch_data_0

    :pswitch_0
    const v1, 0x7f0700b8

    :goto_2
    iget-object v0, v0, Lcom/miui/antispam/ui/a/e;->VP:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    return-void

    :cond_2
    iget-object v1, v0, Lcom/miui/antispam/ui/a/e;->title:Landroid/widget/TextView;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, v0, Lcom/miui/antispam/ui/a/e;->title:Landroid/widget/TextView;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/miui/antispam/ui/a/c;->VJ:Lcom/miui/antispam/util/a;

    new-instance v8, Lcom/miui/antispam/ui/a/m;

    invoke-direct {v8, p0, v0}, Lcom/miui/antispam/ui/a/m;-><init>(Lcom/miui/antispam/ui/a/c;Lcom/miui/antispam/ui/a/e;)V

    invoke-virtual {v1, v2, v8}, Lcom/miui/antispam/util/a;->Xr(Ljava/lang/String;Lcom/miui/antispam/util/b;)Landroid/util/Pair;

    move-result-object v8

    if-eqz v8, :cond_0

    iget-object v1, v8, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Ljava/lang/CharSequence;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_0

    iget-object v9, v0, Lcom/miui/antispam/ui/a/e;->title:Landroid/widget/TextView;

    iget-object v1, v8, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Ljava/lang/CharSequence;

    invoke-virtual {v9, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    :cond_3
    iget-object v1, v0, Lcom/miui/antispam/ui/a/e;->title:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/miui/antispam/ui/a/c;->mContext:Landroid/content/Context;

    sget v8, Lmiui/R$style;->TextAppearance_List_Primary:I

    invoke-virtual {v1, v3, v8}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    iget-object v1, v0, Lcom/miui/antispam/ui/a/e;->VM:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/miui/antispam/ui/a/c;->mContext:Landroid/content/Context;

    sget v8, Lmiui/R$style;->TextAppearance_List_Secondary:I

    invoke-virtual {v1, v3, v8}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    iget-object v1, v0, Lcom/miui/antispam/ui/a/e;->VM:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/miui/antispam/ui/a/c;->mContext:Landroid/content/Context;

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v9, 0x0

    aput-object v4, v8, v9

    const v4, 0x7f070034

    invoke-virtual {v3, v4, v8}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    :pswitch_1
    const v1, 0x7f0700b8

    goto :goto_2

    :pswitch_2
    const v1, 0x7f0700b9

    goto :goto_2

    :pswitch_3
    const v1, 0x7f0700bb

    goto :goto_2

    :pswitch_4
    const v1, 0x7f0700ba

    goto :goto_2

    :pswitch_5
    invoke-static {}, Lcom/miui/antispam/util/h;->isLargeScaleMode()Z

    move-result v1

    if-eqz v1, :cond_4

    const v1, 0x7f0700c5

    goto :goto_2

    :cond_4
    const v1, 0x7f0700c1

    goto :goto_2

    :pswitch_6
    invoke-static {}, Lcom/miui/antispam/util/h;->isLargeScaleMode()Z

    move-result v1

    if-eqz v1, :cond_5

    const v1, 0x7f0700c6

    goto/16 :goto_2

    :cond_5
    const v1, 0x7f0700c2

    goto/16 :goto_2

    :pswitch_7
    invoke-static {}, Lcom/miui/antispam/util/h;->isLargeScaleMode()Z

    move-result v1

    if-eqz v1, :cond_6

    const v1, 0x7f0700c7

    goto/16 :goto_2

    :cond_6
    const v1, 0x7f0700c3

    goto/16 :goto_2

    :pswitch_8
    invoke-static {}, Lcom/miui/antispam/util/h;->isLargeScaleMode()Z

    move-result v1

    if-eqz v1, :cond_7

    const v1, 0x7f0700c8

    goto/16 :goto_2

    :cond_7
    const v1, 0x7f0700c4

    goto/16 :goto_2

    :pswitch_9
    const v1, 0x7f0700be

    goto/16 :goto_2

    :pswitch_a
    const v1, 0x7f0700bd

    goto/16 :goto_2

    :pswitch_b
    const v1, 0x7f0700bc

    goto/16 :goto_2

    :pswitch_c
    const v1, 0x7f0700bf

    goto/16 :goto_2

    :pswitch_d
    const v1, 0x7f0700c0

    goto/16 :goto_2

    nop

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_1
        :pswitch_3
        :pswitch_1
        :pswitch_2
        :pswitch_b
        :pswitch_5
        :pswitch_a
        :pswitch_6
        :pswitch_0
        :pswitch_7
        :pswitch_4
        :pswitch_8
        :pswitch_9
        :pswitch_c
        :pswitch_d
    .end packed-switch
.end method
