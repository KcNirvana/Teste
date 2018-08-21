.class Lcom/miui/personalassistant/ui/AppPickerActivity$AppPickerAdapter;
.super Landroid/widget/BaseAdapter;
.source "AppPickerActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/personalassistant/ui/AppPickerActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AppPickerAdapter"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/personalassistant/ui/AppPickerActivity$AppPickerAdapter$ViewHolder;
    }
.end annotation


# instance fields
.field private mClickCallback:Lcom/miui/personalassistant/util/Callback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/miui/personalassistant/util/Callback",
            "<",
            "Landroid/content/pm/ResolveInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mContext:Landroid/content/Context;

.field private mFunctionSelected:Lcom/miui/personalassistant/model/FunctionLaunch;

.field private mResolveInfos:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/ResolveInfo;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/miui/personalassistant/ui/AppPickerActivity;


# direct methods
.method public constructor <init>(Lcom/miui/personalassistant/ui/AppPickerActivity;Landroid/content/Context;Ljava/util/List;Lcom/miui/personalassistant/model/FunctionLaunch;Lcom/miui/personalassistant/util/Callback;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/ResolveInfo;",
            ">;",
            "Lcom/miui/personalassistant/model/FunctionLaunch;",
            "Lcom/miui/personalassistant/util/Callback",
            "<",
            "Landroid/content/pm/ResolveInfo;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/miui/personalassistant/ui/AppPickerActivity$AppPickerAdapter;->this$0:Lcom/miui/personalassistant/ui/AppPickerActivity;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    iput-object p2, p0, Lcom/miui/personalassistant/ui/AppPickerActivity$AppPickerAdapter;->mContext:Landroid/content/Context;

    iput-object p3, p0, Lcom/miui/personalassistant/ui/AppPickerActivity$AppPickerAdapter;->mResolveInfos:Ljava/util/List;

    iput-object p4, p0, Lcom/miui/personalassistant/ui/AppPickerActivity$AppPickerAdapter;->mFunctionSelected:Lcom/miui/personalassistant/model/FunctionLaunch;

    iput-object p5, p0, Lcom/miui/personalassistant/ui/AppPickerActivity$AppPickerAdapter;->mClickCallback:Lcom/miui/personalassistant/util/Callback;

    return-void
.end method

.method static synthetic access$200(Lcom/miui/personalassistant/ui/AppPickerActivity$AppPickerAdapter;)Lcom/miui/personalassistant/util/Callback;
    .locals 1

    iget-object v0, p0, Lcom/miui/personalassistant/ui/AppPickerActivity$AppPickerAdapter;->mClickCallback:Lcom/miui/personalassistant/util/Callback;

    return-object v0
.end method


# virtual methods
.method public getCount()I
    .locals 1

    iget-object v0, p0, Lcom/miui/personalassistant/ui/AppPickerActivity$AppPickerAdapter;->mResolveInfos:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Landroid/content/pm/ResolveInfo;
    .locals 1

    iget-object v0, p0, Lcom/miui/personalassistant/ui/AppPickerActivity$AppPickerAdapter;->mResolveInfos:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ResolveInfo;

    return-object v0
.end method

.method public bridge synthetic getItem(I)Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/miui/personalassistant/ui/AppPickerActivity$AppPickerAdapter;->getItem(I)Landroid/content/pm/ResolveInfo;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2

    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 10

    if-nez p2, :cond_2

    invoke-virtual {p3}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-static {v7}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v7

    const v8, 0x1b04002a

    const/4 v9, 0x0

    invoke-virtual {v7, v8, p3, v9}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    new-instance v6, Lcom/miui/personalassistant/ui/AppPickerActivity$AppPickerAdapter$ViewHolder;

    invoke-direct {v6, p0}, Lcom/miui/personalassistant/ui/AppPickerActivity$AppPickerAdapter$ViewHolder;-><init>(Lcom/miui/personalassistant/ui/AppPickerActivity$AppPickerAdapter;)V

    const v7, 0x1b09006c

    invoke-virtual {p2, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/ImageView;

    iput-object v7, v6, Lcom/miui/personalassistant/ui/AppPickerActivity$AppPickerAdapter$ViewHolder;->icon:Landroid/widget/ImageView;

    const v7, 0x1b0900ea

    invoke-virtual {p2, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    iput-object v7, v6, Lcom/miui/personalassistant/ui/AppPickerActivity$AppPickerAdapter$ViewHolder;->name:Landroid/widget/TextView;

    const v7, 0x1b0900eb

    invoke-virtual {p2, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/RadioButton;

    iput-object v7, v6, Lcom/miui/personalassistant/ui/AppPickerActivity$AppPickerAdapter$ViewHolder;->check:Landroid/widget/RadioButton;

    invoke-virtual {p2, v6}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    :goto_0
    invoke-virtual {p0, p1}, Lcom/miui/personalassistant/ui/AppPickerActivity$AppPickerAdapter;->getItem(I)Landroid/content/pm/ResolveInfo;

    move-result-object v3

    iget-object v7, p0, Lcom/miui/personalassistant/ui/AppPickerActivity$AppPickerAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v7

    invoke-virtual {v3, v7}, Landroid/content/pm/ResolveInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v0

    iget-object v7, v6, Lcom/miui/personalassistant/ui/AppPickerActivity$AppPickerAdapter$ViewHolder;->name:Landroid/widget/TextView;

    invoke-virtual {v7, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/4 v5, 0x0

    iget-object v7, v3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v7, v7, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v7, v7, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v7}, Lmiui/securityspace/XSpaceUserHandle;->isUidBelongtoXSpace(I)Z

    move-result v2

    iget-object v7, p0, Lcom/miui/personalassistant/ui/AppPickerActivity$AppPickerAdapter;->mFunctionSelected:Lcom/miui/personalassistant/model/FunctionLaunch;

    if-eqz v7, :cond_1

    iget-object v7, p0, Lcom/miui/personalassistant/ui/AppPickerActivity$AppPickerAdapter;->mFunctionSelected:Lcom/miui/personalassistant/model/FunctionLaunch;

    invoke-virtual {v7}, Lcom/miui/personalassistant/model/FunctionLaunch;->getId()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_0

    iget-object v7, p0, Lcom/miui/personalassistant/ui/AppPickerActivity$AppPickerAdapter;->mFunctionSelected:Lcom/miui/personalassistant/model/FunctionLaunch;

    invoke-virtual {v7}, Lcom/miui/personalassistant/model/FunctionLaunch;->getId()Ljava/lang/String;

    move-result-object v7

    const-string/jumbo v8, "null"

    invoke-static {v7, v8}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_1

    :cond_0
    iget-object v7, p0, Lcom/miui/personalassistant/ui/AppPickerActivity$AppPickerAdapter;->mFunctionSelected:Lcom/miui/personalassistant/model/FunctionLaunch;

    invoke-virtual {v7}, Lcom/miui/personalassistant/model/FunctionLaunch;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_1

    iget-object v7, p0, Lcom/miui/personalassistant/ui/AppPickerActivity$AppPickerAdapter;->mFunctionSelected:Lcom/miui/personalassistant/model/FunctionLaunch;

    invoke-virtual {v7}, Lcom/miui/personalassistant/model/FunctionLaunch;->isXspace()Z

    move-result v7

    if-ne v7, v2, :cond_1

    const/4 v5, 0x1

    :cond_1
    iget-object v7, v6, Lcom/miui/personalassistant/ui/AppPickerActivity$AppPickerAdapter$ViewHolder;->name:Landroid/widget/TextView;

    invoke-virtual {v7, v5}, Landroid/widget/TextView;->setSelected(Z)V

    iget-object v7, v6, Lcom/miui/personalassistant/ui/AppPickerActivity$AppPickerAdapter$ViewHolder;->check:Landroid/widget/RadioButton;

    invoke-virtual {v7, v5}, Landroid/widget/RadioButton;->setChecked(Z)V

    iget-object v7, v3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    if-nez v7, :cond_3

    const-string/jumbo v4, ""

    :goto_1
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v7, p0, Lcom/miui/personalassistant/ui/AppPickerActivity$AppPickerAdapter;->this$0:Lcom/miui/personalassistant/ui/AppPickerActivity;

    iget-object v8, v6, Lcom/miui/personalassistant/ui/AppPickerActivity$AppPickerAdapter$ViewHolder;->icon:Landroid/widget/ImageView;

    invoke-static {v7, v3, v8, v1}, Lcom/miui/personalassistant/ui/AppPickerActivity;->access$100(Lcom/miui/personalassistant/ui/AppPickerActivity;Landroid/content/pm/ResolveInfo;Landroid/widget/ImageView;Ljava/lang/String;)V

    new-instance v7, Lcom/miui/personalassistant/ui/AppPickerActivity$AppPickerAdapter$1;

    invoke-direct {v7, p0, v3}, Lcom/miui/personalassistant/ui/AppPickerActivity$AppPickerAdapter$1;-><init>(Lcom/miui/personalassistant/ui/AppPickerActivity$AppPickerAdapter;Landroid/content/pm/ResolveInfo;)V

    invoke-virtual {p2, v7}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-object p2

    :cond_2
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/miui/personalassistant/ui/AppPickerActivity$AppPickerAdapter$ViewHolder;

    goto/16 :goto_0

    :cond_3
    iget-object v7, v3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v4, v7, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    goto :goto_1
.end method
