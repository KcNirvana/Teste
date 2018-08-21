.class public Lcom/miui/personalassistant/ui/adapter/LaunchGridAdapter;
.super Landroid/support/v7/widget/RecyclerView$Adapter;
.source "LaunchGridAdapter.java"

# interfaces
.implements Lcom/miui/personalassistant/interfaces/OnItemMoveListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/personalassistant/ui/adapter/LaunchGridAdapter$OnClickListener;,
        Lcom/miui/personalassistant/ui/adapter/LaunchGridAdapter$ViewHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/support/v7/widget/RecyclerView$Adapter",
        "<",
        "Lcom/miui/personalassistant/ui/adapter/LaunchGridAdapter$ViewHolder;",
        ">;",
        "Lcom/miui/personalassistant/interfaces/OnItemMoveListener;"
    }
.end annotation


# static fields
.field public static final FUNCTION_NUM_TOTAL:I = 0xa

.field private static final TAG:Ljava/lang/String; = "LaunchGridAdapter"


# instance fields
.field private isLight:Z

.field private mContext:Landroid/content/Context;

.field private mDrawableMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Landroid/graphics/drawable/Drawable;",
            ">;"
        }
    .end annotation
.end field

.field private mEntries:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/miui/personalassistant/model/FunctionLaunch;",
            ">;"
        }
    .end annotation
.end field

.field private mInflater:Landroid/view/LayoutInflater;

.field private mListener:Lcom/miui/personalassistant/ui/adapter/LaunchGridAdapter$OnClickListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/ArrayList;Z)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/miui/personalassistant/model/FunctionLaunch;",
            ">;Z)V"
        }
    .end annotation

    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$Adapter;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/miui/personalassistant/ui/adapter/LaunchGridAdapter;->isLight:Z

    iput-object p1, p0, Lcom/miui/personalassistant/ui/adapter/LaunchGridAdapter;->mContext:Landroid/content/Context;

    iget-object v0, p0, Lcom/miui/personalassistant/ui/adapter/LaunchGridAdapter;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/personalassistant/ui/adapter/LaunchGridAdapter;->mInflater:Landroid/view/LayoutInflater;

    iput-object p2, p0, Lcom/miui/personalassistant/ui/adapter/LaunchGridAdapter;->mEntries:Ljava/util/ArrayList;

    iput-boolean p3, p0, Lcom/miui/personalassistant/ui/adapter/LaunchGridAdapter;->isLight:Z

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/miui/personalassistant/ui/adapter/LaunchGridAdapter;->mDrawableMap:Ljava/util/Map;

    return-void
.end method

.method static synthetic access$000(Lcom/miui/personalassistant/ui/adapter/LaunchGridAdapter;)Lcom/miui/personalassistant/ui/adapter/LaunchGridAdapter$OnClickListener;
    .locals 1

    iget-object v0, p0, Lcom/miui/personalassistant/ui/adapter/LaunchGridAdapter;->mListener:Lcom/miui/personalassistant/ui/adapter/LaunchGridAdapter$OnClickListener;

    return-object v0
.end method

.method static synthetic access$100(Lcom/miui/personalassistant/ui/adapter/LaunchGridAdapter;)Ljava/util/ArrayList;
    .locals 1

    iget-object v0, p0, Lcom/miui/personalassistant/ui/adapter/LaunchGridAdapter;->mEntries:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$200(Lcom/miui/personalassistant/ui/adapter/LaunchGridAdapter;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/miui/personalassistant/ui/adapter/LaunchGridAdapter;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$300(Lcom/miui/personalassistant/ui/adapter/LaunchGridAdapter;)V
    .locals 0

    invoke-direct {p0}, Lcom/miui/personalassistant/ui/adapter/LaunchGridAdapter;->sendUpdateBroadcast()V

    return-void
.end method

.method private sendUpdateBroadcast()V
    .locals 3

    const/4 v2, 0x1

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string/jumbo v1, "miui.intent.action.MINUS_SCREEN_UPDATE"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v1, "isFromSetting"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string/jumbo v1, "isFromLaunch"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    iget-object v1, p0, Lcom/miui/personalassistant/ui/adapter/LaunchGridAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    iget-object v1, p0, Lcom/miui/personalassistant/ui/adapter/LaunchGridAdapter;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "6"

    invoke-static {v1, v2}, Lcom/miui/personalassistant/util/CloudServiceUtil;->setUnSync(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public bindEmptyEntry(Lcom/miui/personalassistant/ui/adapter/LaunchGridAdapter$ViewHolder;)V
    .locals 2

    iget-object v1, p1, Lcom/miui/personalassistant/ui/adapter/LaunchGridAdapter$ViewHolder;->mIcon:Landroid/widget/ImageView;

    iget-boolean v0, p0, Lcom/miui/personalassistant/ui/adapter/LaunchGridAdapter;->isLight:Z

    if-eqz v0, :cond_0

    const v0, 0x1b0200f9

    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object v0, p1, Lcom/miui/personalassistant/ui/adapter/LaunchGridAdapter$ViewHolder;->mIvRemove:Landroid/widget/ImageView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p1, Lcom/miui/personalassistant/ui/adapter/LaunchGridAdapter$ViewHolder;->mName:Landroid/widget/TextView;

    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p1, Lcom/miui/personalassistant/ui/adapter/LaunchGridAdapter$ViewHolder;->mAppName:Landroid/widget/TextView;

    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void

    :cond_0
    const v0, 0x1b0200f8

    goto :goto_0
.end method

.method public getData()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/miui/personalassistant/model/FunctionLaunch;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/miui/personalassistant/ui/adapter/LaunchGridAdapter;->mEntries:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getItem(I)Lcom/miui/personalassistant/model/FunctionLaunch;
    .locals 3

    const/4 v2, 0x0

    :try_start_0
    iget-object v1, p0, Lcom/miui/personalassistant/ui/adapter/LaunchGridAdapter;->mEntries:Ljava/util/ArrayList;

    if-nez v1, :cond_0

    move-object v1, v2

    :goto_0
    return-object v1

    :cond_0
    iget-object v1, p0, Lcom/miui/personalassistant/ui/adapter/LaunchGridAdapter;->mEntries:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/miui/personalassistant/model/FunctionLaunch;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    move-object v1, v2

    goto :goto_0
.end method

.method public getItemCount()I
    .locals 1

    const/16 v0, 0xa

    return v0
.end method

.method public getItemId(I)J
    .locals 2

    int-to-long v0, p1

    return-wide v0
.end method

.method public getListener()Lcom/miui/personalassistant/ui/adapter/LaunchGridAdapter$OnClickListener;
    .locals 1

    iget-object v0, p0, Lcom/miui/personalassistant/ui/adapter/LaunchGridAdapter;->mListener:Lcom/miui/personalassistant/ui/adapter/LaunchGridAdapter$OnClickListener;

    return-object v0
.end method

.method public bridge synthetic onBindViewHolder(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V
    .locals 0

    check-cast p1, Lcom/miui/personalassistant/ui/adapter/LaunchGridAdapter$ViewHolder;

    invoke-virtual {p0, p1, p2}, Lcom/miui/personalassistant/ui/adapter/LaunchGridAdapter;->onBindViewHolder(Lcom/miui/personalassistant/ui/adapter/LaunchGridAdapter$ViewHolder;I)V

    return-void
.end method

.method public onBindViewHolder(Lcom/miui/personalassistant/ui/adapter/LaunchGridAdapter$ViewHolder;I)V
    .locals 12

    invoke-virtual {p0, p2}, Lcom/miui/personalassistant/ui/adapter/LaunchGridAdapter;->getItem(I)Lcom/miui/personalassistant/model/FunctionLaunch;

    move-result-object v4

    if-nez v4, :cond_1

    invoke-virtual {p0, p1}, Lcom/miui/personalassistant/ui/adapter/LaunchGridAdapter;->bindEmptyEntry(Lcom/miui/personalassistant/ui/adapter/LaunchGridAdapter$ViewHolder;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {v4}, Lcom/miui/personalassistant/model/FunctionLaunch;->getDrawableName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4}, Lcom/miui/personalassistant/model/FunctionLaunch;->getPackageName()Ljava/lang/String;

    move-result-object v8

    const/4 v7, 0x0

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_2

    const-string/jumbo v9, "null"

    invoke-virtual {v9, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_6

    :cond_2
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_3

    iget-object v9, p0, Lcom/miui/personalassistant/ui/adapter/LaunchGridAdapter;->mContext:Landroid/content/Context;

    invoke-static {v9, v8}, Lcom/miui/personalassistant/util/Util;->getAppName(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v9, p1, Lcom/miui/personalassistant/ui/adapter/LaunchGridAdapter$ViewHolder;->mName:Landroid/widget/TextView;

    invoke-virtual {v9, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v9, p1, Lcom/miui/personalassistant/ui/adapter/LaunchGridAdapter$ViewHolder;->mAppName:Landroid/widget/TextView;

    iget-object v10, p0, Lcom/miui/personalassistant/ui/adapter/LaunchGridAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x1b0b0031

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_3
    :goto_1
    iget-object v9, p0, Lcom/miui/personalassistant/ui/adapter/LaunchGridAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v4, v9}, Lcom/miui/personalassistant/model/FunctionLaunch;->isInstalled(Landroid/content/Context;)Z

    move-result v9

    if-nez v9, :cond_4

    iget-object v9, p1, Lcom/miui/personalassistant/ui/adapter/LaunchGridAdapter$ViewHolder;->mName:Landroid/widget/TextView;

    iget-object v10, p0, Lcom/miui/personalassistant/ui/adapter/LaunchGridAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x1b0b02d0

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_4
    iget-boolean v9, p0, Lcom/miui/personalassistant/ui/adapter/LaunchGridAdapter;->isLight:Z

    if-eqz v9, :cond_5

    iget-object v9, p1, Lcom/miui/personalassistant/ui/adapter/LaunchGridAdapter$ViewHolder;->mName:Landroid/widget/TextView;

    iget-object v10, p0, Lcom/miui/personalassistant/ui/adapter/LaunchGridAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x1b0f0067

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getColor(I)I

    move-result v10

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v9, p1, Lcom/miui/personalassistant/ui/adapter/LaunchGridAdapter$ViewHolder;->mAppName:Landroid/widget/TextView;

    iget-object v10, p0, Lcom/miui/personalassistant/ui/adapter/LaunchGridAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x1b0f0066

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getColor(I)I

    move-result v10

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setTextColor(I)V

    :cond_5
    iget-object v9, p1, Lcom/miui/personalassistant/ui/adapter/LaunchGridAdapter$ViewHolder;->mIvRemove:Landroid/widget/ImageView;

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v9, p1, Lcom/miui/personalassistant/ui/adapter/LaunchGridAdapter$ViewHolder;->mIvRemove:Landroid/widget/ImageView;

    iget-object v10, p0, Lcom/miui/personalassistant/ui/adapter/LaunchGridAdapter;->mContext:Landroid/content/Context;

    const v11, 0x1b0b024b

    invoke-virtual {v10, v11}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    iget-object v9, p1, Lcom/miui/personalassistant/ui/adapter/LaunchGridAdapter$ViewHolder;->mIvRemove:Landroid/widget/ImageView;

    new-instance v10, Lcom/miui/personalassistant/ui/adapter/LaunchGridAdapter$1;

    invoke-direct {v10, p0, p2, v4}, Lcom/miui/personalassistant/ui/adapter/LaunchGridAdapter$1;-><init>(Lcom/miui/personalassistant/ui/adapter/LaunchGridAdapter;ILcom/miui/personalassistant/model/FunctionLaunch;)V

    invoke-virtual {v9, v10}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {v4}, Lcom/miui/personalassistant/model/FunctionLaunch;->getId()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_8

    const-string/jumbo v9, "null"

    invoke-virtual {v9, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_8

    iget-object v9, p0, Lcom/miui/personalassistant/ui/adapter/LaunchGridAdapter;->mDrawableMap:Ljava/util/Map;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v4}, Lcom/miui/personalassistant/model/FunctionLaunch;->isXspace()Z

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-interface {v9, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_8

    iget-object v9, p1, Lcom/miui/personalassistant/ui/adapter/LaunchGridAdapter$ViewHolder;->mIcon:Landroid/widget/ImageView;

    invoke-virtual {v9, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_0

    :cond_6
    iget-object v9, p1, Lcom/miui/personalassistant/ui/adapter/LaunchGridAdapter$ViewHolder;->mName:Landroid/widget/TextView;

    iget-object v10, p0, Lcom/miui/personalassistant/ui/adapter/LaunchGridAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Lcom/miui/personalassistant/model/FunctionLaunch;->getName()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/miui/personalassistant/util/StringUtil;->getStringResource(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v4}, Lcom/miui/personalassistant/model/FunctionLaunch;->getId()Ljava/lang/String;

    move-result-object v9

    const-string/jumbo v10, "101"

    invoke-static {v9, v10}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_7

    const-string/jumbo v1, "paycode_sdk_parent_title"

    :goto_2
    iget-object v9, p1, Lcom/miui/personalassistant/ui/adapter/LaunchGridAdapter$ViewHolder;->mAppName:Landroid/widget/TextView;

    iget-object v10, p0, Lcom/miui/personalassistant/ui/adapter/LaunchGridAdapter;->mContext:Landroid/content/Context;

    invoke-static {v10, v1}, Lcom/miui/personalassistant/util/StringUtil;->getStringResource(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    :cond_7
    invoke-virtual {v4}, Lcom/miui/personalassistant/model/FunctionLaunch;->getAppName()Ljava/lang/String;

    move-result-object v1

    goto :goto_2

    :cond_8
    iget-object v9, p0, Lcom/miui/personalassistant/ui/adapter/LaunchGridAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Lcom/miui/personalassistant/model/FunctionLaunch;->isXspace()Z

    move-result v10

    invoke-virtual {v4}, Lcom/miui/personalassistant/model/FunctionLaunch;->getDrawableId()I

    move-result v11

    invoke-static {v9, v10, v8, v11}, Lcom/miui/personalassistant/util/ImageUtil;->getLaunchDrawable(Landroid/content/Context;ZLjava/lang/String;I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    if-eqz v5, :cond_9

    iget-object v9, p1, Lcom/miui/personalassistant/ui/adapter/LaunchGridAdapter$ViewHolder;->mIcon:Landroid/widget/ImageView;

    invoke-virtual {v9, v5}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    move-object v7, v5

    :cond_9
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_0

    const-string/jumbo v9, "null"

    invoke-virtual {v9, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_0

    iget-object v9, p0, Lcom/miui/personalassistant/ui/adapter/LaunchGridAdapter;->mDrawableMap:Ljava/util/Map;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v4}, Lcom/miui/personalassistant/model/FunctionLaunch;->isXspace()Z

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-interface {v9, v10, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .locals 1

    invoke-virtual {p0, p1, p2}, Lcom/miui/personalassistant/ui/adapter/LaunchGridAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/miui/personalassistant/ui/adapter/LaunchGridAdapter$ViewHolder;

    move-result-object v0

    return-object v0
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/miui/personalassistant/ui/adapter/LaunchGridAdapter$ViewHolder;
    .locals 4

    new-instance v0, Lcom/miui/personalassistant/ui/adapter/LaunchGridAdapter$ViewHolder;

    iget-object v1, p0, Lcom/miui/personalassistant/ui/adapter/LaunchGridAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v2, 0x1b0400b6

    const/4 v3, 0x0

    invoke-virtual {v1, v2, p1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/miui/personalassistant/ui/adapter/LaunchGridAdapter$ViewHolder;-><init>(Lcom/miui/personalassistant/ui/adapter/LaunchGridAdapter;Landroid/view/View;)V

    return-object v0
.end method

.method public onItemMove(II)V
    .locals 5

    const-string/jumbo v2, "LaunchGridAdapter"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "onChange from="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "\tto="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/miui/personalassistant/config/PALog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/miui/personalassistant/ui/adapter/LaunchGridAdapter;->mEntries:Ljava/util/ArrayList;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/miui/personalassistant/ui/adapter/LaunchGridAdapter;->mEntries:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge p1, v2, :cond_0

    iget-object v2, p0, Lcom/miui/personalassistant/ui/adapter/LaunchGridAdapter;->mEntries:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lt p2, v2, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v2, p0, Lcom/miui/personalassistant/ui/adapter/LaunchGridAdapter;->mEntries:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/miui/personalassistant/model/FunctionLaunch;

    if-ge p1, p2, :cond_2

    move v0, p1

    :goto_1
    if-ge v0, p2, :cond_3

    iget-object v2, p0, Lcom/miui/personalassistant/ui/adapter/LaunchGridAdapter;->mEntries:Ljava/util/ArrayList;

    add-int/lit8 v3, v0, 0x1

    invoke-static {v2, v0, v3}, Ljava/util/Collections;->swap(Ljava/util/List;II)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    if-le p1, p2, :cond_3

    move v0, p1

    :goto_2
    if-le v0, p2, :cond_3

    iget-object v2, p0, Lcom/miui/personalassistant/ui/adapter/LaunchGridAdapter;->mEntries:Ljava/util/ArrayList;

    add-int/lit8 v3, v0, -0x1

    invoke-static {v2, v0, v3}, Ljava/util/Collections;->swap(Ljava/util/List;II)V

    add-int/lit8 v0, v0, -0x1

    goto :goto_2

    :cond_3
    iget-object v2, p0, Lcom/miui/personalassistant/ui/adapter/LaunchGridAdapter;->mEntries:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    iget-object v2, p0, Lcom/miui/personalassistant/ui/adapter/LaunchGridAdapter;->mEntries:Ljava/util/ArrayList;

    invoke-virtual {v2, p2, v1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    invoke-virtual {p0, p1, p2}, Lcom/miui/personalassistant/ui/adapter/LaunchGridAdapter;->notifyItemMoved(II)V

    goto :goto_0
.end method

.method public setData(Ljava/util/ArrayList;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/miui/personalassistant/model/FunctionLaunch;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/miui/personalassistant/ui/adapter/LaunchGridAdapter;->mEntries:Ljava/util/ArrayList;

    new-instance v0, Lcom/miui/personalassistant/ui/adapter/LaunchGridAdapter$2;

    invoke-direct {v0, p0}, Lcom/miui/personalassistant/ui/adapter/LaunchGridAdapter$2;-><init>(Lcom/miui/personalassistant/ui/adapter/LaunchGridAdapter;)V

    invoke-static {v0}, Lcom/miui/personalassistant/util/ThreadDispatcher;->postToMainThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public setOnGridItemClickListener(Lcom/miui/personalassistant/ui/adapter/LaunchGridAdapter$OnClickListener;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/personalassistant/ui/adapter/LaunchGridAdapter;->mListener:Lcom/miui/personalassistant/ui/adapter/LaunchGridAdapter$OnClickListener;

    return-void
.end method
