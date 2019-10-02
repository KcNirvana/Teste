.class Lcom/miui/video/service/share/ShareAdapter$GridViewAdapter;
.super Landroid/widget/BaseAdapter;
.source "ShareAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/video/service/share/ShareAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "GridViewAdapter"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/video/service/share/ShareAdapter$GridViewAdapter$IntentInfoViewHolder;
    }
.end annotation


# instance fields
.field private curIndex:I

.field private inflater:Landroid/view/LayoutInflater;

.field private itemEachPage:I

.field final synthetic this$0:Lcom/miui/video/service/share/ShareAdapter;


# direct methods
.method public constructor <init>(Lcom/miui/video/service/share/ShareAdapter;II)V
    .locals 0

    iput-object p1, p0, Lcom/miui/video/service/share/ShareAdapter$GridViewAdapter;->this$0:Lcom/miui/video/service/share/ShareAdapter;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    invoke-static {p1}, Lcom/miui/video/service/share/ShareAdapter;->access$500(Lcom/miui/video/service/share/ShareAdapter;)Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    iput-object p1, p0, Lcom/miui/video/service/share/ShareAdapter$GridViewAdapter;->inflater:Landroid/view/LayoutInflater;

    iput p2, p0, Lcom/miui/video/service/share/ShareAdapter$GridViewAdapter;->curIndex:I

    iput p3, p0, Lcom/miui/video/service/share/ShareAdapter$GridViewAdapter;->itemEachPage:I

    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 3

    iget-object v0, p0, Lcom/miui/video/service/share/ShareAdapter$GridViewAdapter;->this$0:Lcom/miui/video/service/share/ShareAdapter;

    invoke-static {v0}, Lcom/miui/video/service/share/ShareAdapter;->access$600(Lcom/miui/video/service/share/ShareAdapter;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iget v1, p0, Lcom/miui/video/service/share/ShareAdapter$GridViewAdapter;->curIndex:I

    add-int/lit8 v1, v1, 0x1

    iget v2, p0, Lcom/miui/video/service/share/ShareAdapter$GridViewAdapter;->itemEachPage:I

    mul-int v1, v1, v2

    if-le v0, v1, :cond_0

    iget v0, p0, Lcom/miui/video/service/share/ShareAdapter$GridViewAdapter;->itemEachPage:I

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/miui/video/service/share/ShareAdapter$GridViewAdapter;->this$0:Lcom/miui/video/service/share/ShareAdapter;

    invoke-static {v0}, Lcom/miui/video/service/share/ShareAdapter;->access$600(Lcom/miui/video/service/share/ShareAdapter;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iget v1, p0, Lcom/miui/video/service/share/ShareAdapter$GridViewAdapter;->curIndex:I

    iget v2, p0, Lcom/miui/video/service/share/ShareAdapter$GridViewAdapter;->itemEachPage:I

    mul-int v1, v1, v2

    sub-int/2addr v0, v1

    :goto_0
    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 3

    iget-object v0, p0, Lcom/miui/video/service/share/ShareAdapter$GridViewAdapter;->this$0:Lcom/miui/video/service/share/ShareAdapter;

    invoke-static {v0}, Lcom/miui/video/service/share/ShareAdapter;->access$600(Lcom/miui/video/service/share/ShareAdapter;)Ljava/util/List;

    move-result-object v0

    iget v1, p0, Lcom/miui/video/service/share/ShareAdapter$GridViewAdapter;->curIndex:I

    iget v2, p0, Lcom/miui/video/service/share/ShareAdapter$GridViewAdapter;->itemEachPage:I

    mul-int v1, v1, v2

    add-int/2addr p1, v1

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public getItemId(I)J
    .locals 2

    iget v0, p0, Lcom/miui/video/service/share/ShareAdapter$GridViewAdapter;->curIndex:I

    iget v1, p0, Lcom/miui/video/service/share/ShareAdapter$GridViewAdapter;->itemEachPage:I

    mul-int v0, v0, v1

    add-int/2addr p1, v0

    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 2

    if-nez p2, :cond_0

    iget-object p2, p0, Lcom/miui/video/service/share/ShareAdapter$GridViewAdapter;->inflater:Landroid/view/LayoutInflater;

    sget v0, Lcom/miui/video/service/R$layout;->ui_card_intent_info:I

    const/4 v1, 0x0

    invoke-virtual {p2, v0, p3, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    new-instance p3, Lcom/miui/video/service/share/ShareAdapter$GridViewAdapter$IntentInfoViewHolder;

    invoke-direct {p3, p0}, Lcom/miui/video/service/share/ShareAdapter$GridViewAdapter$IntentInfoViewHolder;-><init>(Lcom/miui/video/service/share/ShareAdapter$GridViewAdapter;)V

    sget v0, Lcom/miui/video/service/R$id;->v_icon:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/miui/video/common/library/widget/CircleImageView;

    invoke-static {p3, v0}, Lcom/miui/video/service/share/ShareAdapter$GridViewAdapter$IntentInfoViewHolder;->access$702(Lcom/miui/video/service/share/ShareAdapter$GridViewAdapter$IntentInfoViewHolder;Lcom/miui/video/common/library/widget/CircleImageView;)Lcom/miui/video/common/library/widget/CircleImageView;

    sget v0, Lcom/miui/video/service/R$id;->v_name:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-static {p3, v0}, Lcom/miui/video/service/share/ShareAdapter$GridViewAdapter$IntentInfoViewHolder;->access$802(Lcom/miui/video/service/share/ShareAdapter$GridViewAdapter$IntentInfoViewHolder;Landroid/widget/TextView;)Landroid/widget/TextView;

    invoke-virtual {p2, p3}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/miui/video/service/share/ShareAdapter$GridViewAdapter$IntentInfoViewHolder;

    :goto_0
    iget v0, p0, Lcom/miui/video/service/share/ShareAdapter$GridViewAdapter;->curIndex:I

    iget v1, p0, Lcom/miui/video/service/share/ShareAdapter$GridViewAdapter;->itemEachPage:I

    mul-int v0, v0, v1

    add-int/2addr p1, v0

    invoke-static {p3}, Lcom/miui/video/service/share/ShareAdapter$GridViewAdapter$IntentInfoViewHolder;->access$700(Lcom/miui/video/service/share/ShareAdapter$GridViewAdapter$IntentInfoViewHolder;)Lcom/miui/video/common/library/widget/CircleImageView;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/video/service/share/ShareAdapter$GridViewAdapter;->this$0:Lcom/miui/video/service/share/ShareAdapter;

    invoke-static {v1}, Lcom/miui/video/service/share/ShareAdapter;->access$600(Lcom/miui/video/service/share/ShareAdapter;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/miui/video/service/share/ShareAdapter$IntentInfo;

    invoke-virtual {v1}, Lcom/miui/video/service/share/ShareAdapter$IntentInfo;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/miui/video/common/library/widget/CircleImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    invoke-static {p3}, Lcom/miui/video/service/share/ShareAdapter$GridViewAdapter$IntentInfoViewHolder;->access$800(Lcom/miui/video/service/share/ShareAdapter$GridViewAdapter$IntentInfoViewHolder;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/video/service/share/ShareAdapter$GridViewAdapter;->this$0:Lcom/miui/video/service/share/ShareAdapter;

    invoke-static {v1}, Lcom/miui/video/service/share/ShareAdapter;->access$600(Lcom/miui/video/service/share/ShareAdapter;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/miui/video/service/share/ShareAdapter$IntentInfo;

    invoke-virtual {v1}, Lcom/miui/video/service/share/ShareAdapter$IntentInfo;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/miui/video/service/share/ShareAdapter$GridViewAdapter;->this$0:Lcom/miui/video/service/share/ShareAdapter;

    invoke-static {v0}, Lcom/miui/video/service/share/ShareAdapter;->access$600(Lcom/miui/video/service/share/ShareAdapter;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/miui/video/service/share/ShareAdapter$IntentInfo;

    invoke-static {p3, p1}, Lcom/miui/video/service/share/ShareAdapter$GridViewAdapter$IntentInfoViewHolder;->access$902(Lcom/miui/video/service/share/ShareAdapter$GridViewAdapter$IntentInfoViewHolder;Lcom/miui/video/service/share/ShareAdapter$IntentInfo;)Lcom/miui/video/service/share/ShareAdapter$IntentInfo;

    invoke-virtual {p2, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-object p2
.end method

.method public onClick(Landroid/view/View;)V
    .locals 4

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/miui/video/service/share/ShareAdapter$GridViewAdapter$IntentInfoViewHolder;

    invoke-static {p1}, Lcom/miui/video/service/share/ShareAdapter$GridViewAdapter$IntentInfoViewHolder;->access$900(Lcom/miui/video/service/share/ShareAdapter$GridViewAdapter$IntentInfoViewHolder;)Lcom/miui/video/service/share/ShareAdapter$IntentInfo;

    move-result-object p1

    const-string v0, "ShareAdapter"

    invoke-virtual {p1}, Lcom/miui/video/service/share/ShareAdapter$IntentInfo;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/miui/video/framework/log/LogUtils;->d(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {p1}, Lcom/miui/video/service/share/ShareAdapter$IntentInfo;->getPackageName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.facebook.katana"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p1}, Lcom/miui/video/service/share/ShareAdapter$IntentInfo;->getClassName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.facebook.composer.shareintent.ImplicitShareIntentHandlerDefaultAlias"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "android.intent.action.SEND"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/miui/video/service/share/ShareAdapter$GridViewAdapter;->this$0:Lcom/miui/video/service/share/ShareAdapter;

    invoke-static {v1}, Lcom/miui/video/service/share/ShareAdapter;->access$1200(Lcom/miui/video/service/share/ShareAdapter;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "android.intent.extra.TEXT"

    iget-object v2, p0, Lcom/miui/video/service/share/ShareAdapter$GridViewAdapter;->this$0:Lcom/miui/video/service/share/ShareAdapter;

    invoke-static {v2}, Lcom/miui/video/service/share/ShareAdapter;->access$1300(Lcom/miui/video/service/share/ShareAdapter;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    new-instance v1, Landroid/content/ComponentName;

    invoke-virtual {p1}, Lcom/miui/video/service/share/ShareAdapter$IntentInfo;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/miui/video/service/share/ShareAdapter$IntentInfo;->getClassName()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/miui/video/service/share/ShareAdapter$GridViewAdapter;->this$0:Lcom/miui/video/service/share/ShareAdapter;

    invoke-static {v1}, Lcom/miui/video/service/share/ShareAdapter;->access$1100(Lcom/miui/video/service/share/ShareAdapter;)Landroid/support/v4/app/Fragment;

    move-result-object v1

    const/16 v2, 0x29a

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/miui/video/service/share/ShareAdapter$GridViewAdapter;->this$0:Lcom/miui/video/service/share/ShareAdapter;

    invoke-static {v1}, Lcom/miui/video/service/share/ShareAdapter;->access$1100(Lcom/miui/video/service/share/ShareAdapter;)Landroid/support/v4/app/Fragment;

    move-result-object v1

    invoke-virtual {v1, v0, v2}, Landroid/support/v4/app/Fragment;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_1

    :cond_1
    iget-object v1, p0, Lcom/miui/video/service/share/ShareAdapter$GridViewAdapter;->this$0:Lcom/miui/video/service/share/ShareAdapter;

    invoke-static {v1}, Lcom/miui/video/service/share/ShareAdapter;->access$500(Lcom/miui/video/service/share/ShareAdapter;)Landroid/content/Context;

    move-result-object v1

    check-cast v1, Landroid/app/Activity;

    invoke-virtual {v1, v0, v2}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_1

    :cond_2
    :goto_0
    new-instance v0, Lcom/facebook/share/model/ShareLinkContent$Builder;

    invoke-direct {v0}, Lcom/facebook/share/model/ShareLinkContent$Builder;-><init>()V

    iget-object v1, p0, Lcom/miui/video/service/share/ShareAdapter$GridViewAdapter;->this$0:Lcom/miui/video/service/share/ShareAdapter;

    invoke-static {v1}, Lcom/miui/video/service/share/ShareAdapter;->access$1000(Lcom/miui/video/service/share/ShareAdapter;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/facebook/share/model/ShareLinkContent$Builder;->setContentUrl(Landroid/net/Uri;)Lcom/facebook/share/model/ShareContent$Builder;

    move-result-object v0

    check-cast v0, Lcom/facebook/share/model/ShareLinkContent$Builder;

    invoke-virtual {v0}, Lcom/facebook/share/model/ShareLinkContent$Builder;->build()Lcom/facebook/share/model/ShareLinkContent;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/video/service/share/ShareAdapter$GridViewAdapter;->this$0:Lcom/miui/video/service/share/ShareAdapter;

    invoke-static {v1}, Lcom/miui/video/service/share/ShareAdapter;->access$1100(Lcom/miui/video/service/share/ShareAdapter;)Landroid/support/v4/app/Fragment;

    move-result-object v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/miui/video/service/share/ShareAdapter$GridViewAdapter;->this$0:Lcom/miui/video/service/share/ShareAdapter;

    invoke-static {v1}, Lcom/miui/video/service/share/ShareAdapter;->access$1100(Lcom/miui/video/service/share/ShareAdapter;)Landroid/support/v4/app/Fragment;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/facebook/share/widget/ShareDialog;->show(Landroid/support/v4/app/Fragment;Lcom/facebook/share/model/ShareContent;)V

    goto :goto_1

    :cond_3
    iget-object v1, p0, Lcom/miui/video/service/share/ShareAdapter$GridViewAdapter;->this$0:Lcom/miui/video/service/share/ShareAdapter;

    invoke-static {v1}, Lcom/miui/video/service/share/ShareAdapter;->access$500(Lcom/miui/video/service/share/ShareAdapter;)Landroid/content/Context;

    move-result-object v1

    check-cast v1, Landroid/app/Activity;

    invoke-static {v1, v0}, Lcom/facebook/share/widget/ShareDialog;->show(Landroid/app/Activity;Lcom/facebook/share/model/ShareContent;)V

    :goto_1
    iget-object v0, p0, Lcom/miui/video/service/share/ShareAdapter$GridViewAdapter;->this$0:Lcom/miui/video/service/share/ShareAdapter;

    iget-object v1, p0, Lcom/miui/video/service/share/ShareAdapter$GridViewAdapter;->this$0:Lcom/miui/video/service/share/ShareAdapter;

    invoke-static {v1}, Lcom/miui/video/service/share/ShareAdapter;->access$1400(Lcom/miui/video/service/share/ShareAdapter;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p1}, Lcom/miui/video/service/share/ShareAdapter$IntentInfo;->access$000(Lcom/miui/video/service/share/ShareAdapter$IntentInfo;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, v1, p1}, Lcom/miui/video/service/share/ShareAdapter;->access$1500(Lcom/miui/video/service/share/ShareAdapter;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
