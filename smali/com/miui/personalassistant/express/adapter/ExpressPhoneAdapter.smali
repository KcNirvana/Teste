.class public Lcom/miui/personalassistant/express/adapter/ExpressPhoneAdapter;
.super Landroid/widget/BaseAdapter;
.source "ExpressPhoneAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/personalassistant/express/adapter/ExpressPhoneAdapter$SubscribeTask;,
        Lcom/miui/personalassistant/express/adapter/ExpressPhoneAdapter$PhoneActionClickListener;
    }
.end annotation


# static fields
.field private static final ITEM_TYPE_PHONE:I = 0x1

.field private static final ITEM_TYPE_TITLE:I = 0x0

.field private static final TAG:Ljava/lang/String; = "ExpressPhoneAdapter"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mDeleteDialog:Lmiui/app/AlertDialog;

.field private mFragment:Landroid/app/Fragment;

.field private mLayoutInflater:Landroid/view/LayoutInflater;

.field private mOnClickListener:Landroid/view/View$OnClickListener;

.field private mPhoneGroups:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/miui/personalassistant/express/bean/PhoneGroup;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/app/Fragment;Landroid/app/Activity;Ljava/util/Map;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Fragment;",
            "Landroid/app/Activity;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/miui/personalassistant/express/bean/PhoneGroup;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    iput-object p1, p0, Lcom/miui/personalassistant/express/adapter/ExpressPhoneAdapter;->mFragment:Landroid/app/Fragment;

    iput-object p2, p0, Lcom/miui/personalassistant/express/adapter/ExpressPhoneAdapter;->mContext:Landroid/content/Context;

    iput-object p3, p0, Lcom/miui/personalassistant/express/adapter/ExpressPhoneAdapter;->mPhoneGroups:Ljava/util/Map;

    iget-object v0, p0, Lcom/miui/personalassistant/express/adapter/ExpressPhoneAdapter;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/personalassistant/express/adapter/ExpressPhoneAdapter;->mLayoutInflater:Landroid/view/LayoutInflater;

    new-instance v0, Lcom/miui/personalassistant/express/adapter/ExpressPhoneAdapter$PhoneActionClickListener;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/miui/personalassistant/express/adapter/ExpressPhoneAdapter$PhoneActionClickListener;-><init>(Lcom/miui/personalassistant/express/adapter/ExpressPhoneAdapter;Lcom/miui/personalassistant/express/adapter/ExpressPhoneAdapter$1;)V

    iput-object v0, p0, Lcom/miui/personalassistant/express/adapter/ExpressPhoneAdapter;->mOnClickListener:Landroid/view/View$OnClickListener;

    return-void
.end method

.method static synthetic access$200(Lcom/miui/personalassistant/express/adapter/ExpressPhoneAdapter;I)I
    .locals 1

    invoke-direct {p0, p1}, Lcom/miui/personalassistant/express/adapter/ExpressPhoneAdapter;->getPhoneGroupType(I)I

    move-result v0

    return v0
.end method

.method static synthetic access$300(Lcom/miui/personalassistant/express/adapter/ExpressPhoneAdapter;Lcom/miui/personalassistant/express/bean/Phone;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/miui/personalassistant/express/adapter/ExpressPhoneAdapter;->showDeleteDialog(Lcom/miui/personalassistant/express/bean/Phone;)V

    return-void
.end method

.method static synthetic access$400(Lcom/miui/personalassistant/express/adapter/ExpressPhoneAdapter;Lcom/miui/personalassistant/express/bean/Phone;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/miui/personalassistant/express/adapter/ExpressPhoneAdapter;->bindPhone(Lcom/miui/personalassistant/express/bean/Phone;)V

    return-void
.end method

.method static synthetic access$500(Lcom/miui/personalassistant/express/adapter/ExpressPhoneAdapter;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/miui/personalassistant/express/adapter/ExpressPhoneAdapter;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$600(Lcom/miui/personalassistant/express/adapter/ExpressPhoneAdapter;)Ljava/util/Map;
    .locals 1

    iget-object v0, p0, Lcom/miui/personalassistant/express/adapter/ExpressPhoneAdapter;->mPhoneGroups:Ljava/util/Map;

    return-object v0
.end method

.method private bindPhone(Lcom/miui/personalassistant/express/bean/Phone;)V
    .locals 8
    .param p1    # Lcom/miui/personalassistant/express/bean/Phone;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    const/4 v7, 0x0

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/miui/personalassistant/express/adapter/ExpressPhoneAdapter;->mPhoneGroups:Ljava/util/Map;

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/personalassistant/express/bean/PhoneGroup;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/miui/personalassistant/express/bean/PhoneGroup;->getPhoneCount()I

    move-result v2

    :cond_0
    const/4 v3, 0x4

    if-ge v2, v3, :cond_3

    invoke-virtual {p1}, Lcom/miui/personalassistant/express/bean/Phone;->isDefaulted()Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/miui/personalassistant/express/adapter/ExpressPhoneAdapter;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/miui/personalassistant/utils/XiaomiAccount;->hasLogin(Landroid/content/Context;)Z

    move-result v3

    if-nez v3, :cond_1

    new-instance v1, Landroid/content/Intent;

    iget-object v3, p0, Lcom/miui/personalassistant/express/adapter/ExpressPhoneAdapter;->mContext:Landroid/content/Context;

    const-class v4, Lcom/miui/personalassistant/express/activity/LoginActivity;

    invoke-direct {v1, v3, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iget-object v3, p0, Lcom/miui/personalassistant/express/adapter/ExpressPhoneAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    :goto_0
    return-void

    :cond_1
    new-instance v3, Lcom/miui/personalassistant/express/adapter/ExpressPhoneAdapter$SubscribeTask;

    const/4 v4, 0x0

    invoke-direct {v3, p0, v4}, Lcom/miui/personalassistant/express/adapter/ExpressPhoneAdapter$SubscribeTask;-><init>(Lcom/miui/personalassistant/express/adapter/ExpressPhoneAdapter;Lcom/miui/personalassistant/express/adapter/ExpressPhoneAdapter$1;)V

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    aput-object p1, v4, v7

    const/4 v5, 0x1

    const-string/jumbo v6, "1"

    aput-object v6, v4, v5

    invoke-virtual {v3, v4}, Lcom/miui/personalassistant/express/adapter/ExpressPhoneAdapter$SubscribeTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0

    :cond_2
    iget-object v3, p0, Lcom/miui/personalassistant/express/adapter/ExpressPhoneAdapter;->mFragment:Landroid/app/Fragment;

    new-instance v4, Landroid/content/Intent;

    iget-object v5, p0, Lcom/miui/personalassistant/express/adapter/ExpressPhoneAdapter;->mContext:Landroid/content/Context;

    const-class v6, Lcom/miui/personalassistant/express/activity/PhoneBindingActivity;

    invoke-direct {v4, v5, v6}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v3, v4, v7}, Landroid/app/Fragment;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    :cond_3
    iget-object v3, p0, Lcom/miui/personalassistant/express/adapter/ExpressPhoneAdapter;->mContext:Landroid/content/Context;

    const v4, 0x1b0b0194

    invoke-static {v3, v4}, Lcom/miui/personalassistant/util/ToastUtil;->show(Landroid/content/Context;I)V

    goto :goto_0
.end method

.method private getPhoneGroupType(I)I
    .locals 4

    iget-object v2, p0, Lcom/miui/personalassistant/express/adapter/ExpressPhoneAdapter;->mPhoneGroups:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/miui/personalassistant/express/bean/PhoneGroup;

    invoke-virtual {v1}, Lcom/miui/personalassistant/express/bean/PhoneGroup;->getItemCount()I

    move-result v0

    if-lt p1, v0, :cond_0

    sub-int/2addr p1, v0

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Lcom/miui/personalassistant/express/bean/PhoneGroup;->getType()I

    move-result v2

    :goto_1
    return v2

    :cond_1
    const/4 v2, 0x0

    goto :goto_1
.end method

.method private showDeleteDialog(Lcom/miui/personalassistant/express/bean/Phone;)V
    .locals 3

    new-instance v0, Lmiui/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/miui/personalassistant/express/adapter/ExpressPhoneAdapter;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lmiui/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x1b0b019f

    invoke-virtual {v0, v1}, Lmiui/app/AlertDialog$Builder;->setTitle(I)Lmiui/app/AlertDialog$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/personalassistant/express/adapter/ExpressPhoneAdapter;->mContext:Landroid/content/Context;

    const v2, 0x1b0b019b

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lmiui/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lmiui/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x1b0b019d

    new-instance v2, Lcom/miui/personalassistant/express/adapter/ExpressPhoneAdapter$1;

    invoke-direct {v2, p0, p1}, Lcom/miui/personalassistant/express/adapter/ExpressPhoneAdapter$1;-><init>(Lcom/miui/personalassistant/express/adapter/ExpressPhoneAdapter;Lcom/miui/personalassistant/express/bean/Phone;)V

    invoke-virtual {v0, v1, v2}, Lmiui/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lmiui/app/AlertDialog$Builder;

    move-result-object v0

    const/high16 v1, 0x1040000

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lmiui/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lmiui/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lmiui/app/AlertDialog$Builder;->show()Lmiui/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/personalassistant/express/adapter/ExpressPhoneAdapter;->mDeleteDialog:Lmiui/app/AlertDialog;

    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 4

    const/4 v0, 0x0

    iget-object v2, p0, Lcom/miui/personalassistant/express/adapter/ExpressPhoneAdapter;->mPhoneGroups:Ljava/util/Map;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/miui/personalassistant/express/adapter/ExpressPhoneAdapter;->mPhoneGroups:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/miui/personalassistant/express/bean/PhoneGroup;

    invoke-virtual {v1}, Lcom/miui/personalassistant/express/bean/PhoneGroup;->getItemCount()I

    move-result v3

    add-int/2addr v0, v3

    goto :goto_0

    :cond_0
    return v0
.end method

.method public getDeleteDialog()Lmiui/app/AlertDialog;
    .locals 1

    iget-object v0, p0, Lcom/miui/personalassistant/express/adapter/ExpressPhoneAdapter;->mDeleteDialog:Lmiui/app/AlertDialog;

    return-object v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 4

    iget-object v2, p0, Lcom/miui/personalassistant/express/adapter/ExpressPhoneAdapter;->mPhoneGroups:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/miui/personalassistant/express/bean/PhoneGroup;

    invoke-virtual {v1}, Lcom/miui/personalassistant/express/bean/PhoneGroup;->getItemCount()I

    move-result v0

    if-lt p1, v0, :cond_0

    sub-int/2addr p1, v0

    goto :goto_0

    :cond_0
    invoke-virtual {v1, p1}, Lcom/miui/personalassistant/express/bean/PhoneGroup;->getItem(I)Ljava/lang/Object;

    move-result-object v2

    :goto_1
    return-object v2

    :cond_1
    const/4 v2, 0x0

    goto :goto_1
.end method

.method public getItemId(I)J
    .locals 2

    int-to-long v0, p1

    return-wide v0
.end method

.method public getItemViewType(I)I
    .locals 5

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/miui/personalassistant/express/adapter/ExpressPhoneAdapter;->mPhoneGroups:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/miui/personalassistant/express/bean/PhoneGroup;

    invoke-virtual {v1}, Lcom/miui/personalassistant/express/bean/PhoneGroup;->getItemCount()I

    move-result v0

    if-lt p1, v0, :cond_0

    sub-int/2addr p1, v0

    goto :goto_0

    :cond_0
    if-nez p1, :cond_2

    :cond_1
    :goto_1
    return v2

    :cond_2
    const/4 v2, 0x1

    goto :goto_1
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 11

    const/4 v9, 0x1

    const/4 v10, 0x0

    invoke-virtual {p0, p1}, Lcom/miui/personalassistant/express/adapter/ExpressPhoneAdapter;->getItemViewType(I)I

    move-result v6

    packed-switch v6, :pswitch_data_0

    :cond_0
    :goto_0
    return-object p2

    :pswitch_0
    iget-object v6, p0, Lcom/miui/personalassistant/express/adapter/ExpressPhoneAdapter;->mLayoutInflater:Landroid/view/LayoutInflater;

    const v7, 0x1b040084

    invoke-virtual {v6, v7, p3, v10}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    const v6, 0x1b09021f

    invoke-virtual {p2, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    invoke-virtual {p0, p1}, Lcom/miui/personalassistant/express/adapter/ExpressPhoneAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/CharSequence;

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :pswitch_1
    iget-object v6, p0, Lcom/miui/personalassistant/express/adapter/ExpressPhoneAdapter;->mLayoutInflater:Landroid/view/LayoutInflater;

    const v7, 0x1b040085

    invoke-virtual {v6, v7, p3, v10}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    invoke-virtual {p0, p1}, Lcom/miui/personalassistant/express/adapter/ExpressPhoneAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/miui/personalassistant/express/bean/Phone;

    const v6, 0x1b090220

    invoke-virtual {p2, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    invoke-direct {p0, p1}, Lcom/miui/personalassistant/express/adapter/ExpressPhoneAdapter;->getPhoneGroupType(I)I

    move-result v1

    if-nez v1, :cond_2

    const v6, 0x1b020313

    invoke-virtual {v0, v6}, Landroid/widget/ImageView;->setImageResource(I)V

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, p0, Lcom/miui/personalassistant/express/adapter/ExpressPhoneAdapter;->mContext:Landroid/content/Context;

    const v8, 0x1b0b050b

    invoke-virtual {v7, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v3}, Lcom/miui/personalassistant/express/bean/Phone;->getNumber()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    :cond_1
    :goto_1
    iget-object v6, p0, Lcom/miui/personalassistant/express/adapter/ExpressPhoneAdapter;->mOnClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v6}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setId(I)V

    const v6, 0x1b090221

    invoke-virtual {p2, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    invoke-virtual {v3}, Lcom/miui/personalassistant/express/bean/Phone;->getNumber()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v6, 0x1b090222

    invoke-virtual {p2, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    invoke-virtual {v3}, Lcom/miui/personalassistant/express/bean/Phone;->isDefaulted()Z

    move-result v6

    if-eqz v6, :cond_0

    iget-object v6, p0, Lcom/miui/personalassistant/express/adapter/ExpressPhoneAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x1b0b0513

    new-array v8, v9, [Ljava/lang/Object;

    invoke-virtual {v3}, Lcom/miui/personalassistant/express/bean/Phone;->getIndex()I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v8, v10

    invoke-virtual {v6, v7, v8}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    :cond_2
    if-ne v1, v9, :cond_1

    const v6, 0x1b02030b

    invoke-virtual {v0, v6}, Landroid/widget/ImageView;->setImageResource(I)V

    invoke-virtual {v3}, Lcom/miui/personalassistant/express/bean/Phone;->getNumber()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/text/TextUtils;->isDigitsOnly(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_3

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, p0, Lcom/miui/personalassistant/express/adapter/ExpressPhoneAdapter;->mContext:Landroid/content/Context;

    const v8, 0x1b0b0509

    invoke-virtual {v7, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v3}, Lcom/miui/personalassistant/express/bean/Phone;->getNumber()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_1

    :cond_3
    invoke-virtual {v3}, Lcom/miui/personalassistant/express/bean/Phone;->getNumber()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
