.class Lcom/miui/personalassistant/ui/AppPickerActivity$LoadImageRunnable;
.super Ljava/lang/Object;
.source "AppPickerActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/personalassistant/ui/AppPickerActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "LoadImageRunnable"
.end annotation


# instance fields
.field private mDrawableKey:Ljava/lang/String;

.field private mIv:Landroid/widget/ImageView;

.field private mResolveInfo:Landroid/content/pm/ResolveInfo;

.field final synthetic this$0:Lcom/miui/personalassistant/ui/AppPickerActivity;


# direct methods
.method public constructor <init>(Lcom/miui/personalassistant/ui/AppPickerActivity;Landroid/widget/ImageView;Landroid/content/pm/ResolveInfo;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/personalassistant/ui/AppPickerActivity$LoadImageRunnable;->this$0:Lcom/miui/personalassistant/ui/AppPickerActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/miui/personalassistant/ui/AppPickerActivity$LoadImageRunnable;->mIv:Landroid/widget/ImageView;

    iput-object p3, p0, Lcom/miui/personalassistant/ui/AppPickerActivity$LoadImageRunnable;->mResolveInfo:Landroid/content/pm/ResolveInfo;

    iput-object p4, p0, Lcom/miui/personalassistant/ui/AppPickerActivity$LoadImageRunnable;->mDrawableKey:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$300(Lcom/miui/personalassistant/ui/AppPickerActivity$LoadImageRunnable;)Landroid/widget/ImageView;
    .locals 1

    iget-object v0, p0, Lcom/miui/personalassistant/ui/AppPickerActivity$LoadImageRunnable;->mIv:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$400(Lcom/miui/personalassistant/ui/AppPickerActivity$LoadImageRunnable;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/miui/personalassistant/ui/AppPickerActivity$LoadImageRunnable;->mDrawableKey:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public run()V
    .locals 4

    iget-object v2, p0, Lcom/miui/personalassistant/ui/AppPickerActivity$LoadImageRunnable;->mResolveInfo:Landroid/content/pm/ResolveInfo;

    invoke-static {}, Lcom/miui/personalassistant/Application;->getAppContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/content/pm/ResolveInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iget-object v2, p0, Lcom/miui/personalassistant/ui/AppPickerActivity$LoadImageRunnable;->mResolveInfo:Landroid/content/pm/ResolveInfo;

    iget-object v2, v2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v2, v2, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v2, v2, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v2}, Lmiui/securityspace/XSpaceUserHandle;->isUidBelongtoXSpace(I)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-static {}, Lcom/miui/personalassistant/Application;->getAppContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, v1}, Lmiui/securityspace/XSpaceUserHandle;->getXSpaceIcon(Landroid/content/Context;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    :cond_0
    move-object v0, v1

    iget-object v2, p0, Lcom/miui/personalassistant/ui/AppPickerActivity$LoadImageRunnable;->this$0:Lcom/miui/personalassistant/ui/AppPickerActivity;

    iget-object v3, p0, Lcom/miui/personalassistant/ui/AppPickerActivity$LoadImageRunnable;->mDrawableKey:Ljava/lang/String;

    invoke-virtual {v2, v3, v0}, Lcom/miui/personalassistant/ui/AppPickerActivity;->addDrawableToLrucaches(Ljava/lang/String;Landroid/graphics/drawable/Drawable;)V

    iget-object v2, p0, Lcom/miui/personalassistant/ui/AppPickerActivity$LoadImageRunnable;->this$0:Lcom/miui/personalassistant/ui/AppPickerActivity;

    new-instance v3, Lcom/miui/personalassistant/ui/AppPickerActivity$LoadImageRunnable$1;

    invoke-direct {v3, p0, v0}, Lcom/miui/personalassistant/ui/AppPickerActivity$LoadImageRunnable$1;-><init>(Lcom/miui/personalassistant/ui/AppPickerActivity$LoadImageRunnable;Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {v2, v3}, Lcom/miui/personalassistant/ui/AppPickerActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method
