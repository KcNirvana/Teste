.class Lcom/miui/video/player/service/localvideoplayer/screenshot/ResolveInfoLoader$LoadTask;
.super Landroid/os/AsyncTask;
.source "ResolveInfoLoader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/video/player/service/localvideoplayer/screenshot/ResolveInfoLoader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "LoadTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Lcom/miui/video/player/service/localvideoplayer/screenshot/ResolveInfoLoader$LoadingInfo;",
        "Ljava/lang/Void;",
        "Lcom/miui/video/player/service/localvideoplayer/screenshot/ResolveInfoLoader$LoadResult;",
        ">;"
    }
.end annotation


# instance fields
.field private mContextRef:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/content/Context;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/miui/video/player/service/localvideoplayer/screenshot/ResolveInfoLoader;


# direct methods
.method constructor <init>(Lcom/miui/video/player/service/localvideoplayer/screenshot/ResolveInfoLoader;Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/video/player/service/localvideoplayer/screenshot/ResolveInfoLoader$LoadTask;->this$0:Lcom/miui/video/player/service/localvideoplayer/screenshot/ResolveInfoLoader;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    new-instance p1, Ljava/lang/ref/WeakReference;

    invoke-direct {p1, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object p1, p0, Lcom/miui/video/player/service/localvideoplayer/screenshot/ResolveInfoLoader$LoadTask;->mContextRef:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method private loadIcon(Lcom/miui/video/player/service/localvideoplayer/screenshot/ResolveInfoLoader$LoadingInfo;)Lcom/miui/video/player/service/localvideoplayer/screenshot/ResolveInfoLoader$IconResult;
    .locals 4

    const/4 v0, 0x0

    const/4 v1, 0x1

    :try_start_0
    iget-object v2, p1, Lcom/miui/video/player/service/localvideoplayer/screenshot/ResolveInfoLoader$LoadingInfo;->mResolve:Landroid/content/pm/ResolveInfo;

    iget-object v3, p0, Lcom/miui/video/player/service/localvideoplayer/screenshot/ResolveInfoLoader$LoadTask;->mContextRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/Context;

    if-eqz v3, :cond_1

    iget-boolean p1, p1, Lcom/miui/video/player/service/localvideoplayer/screenshot/ResolveInfoLoader$LoadingInfo;->mUseCustomIcon:Z

    if-eqz p1, :cond_0

    iget-object p1, v2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object p1, p1, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    iget-object p1, v2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object p1, p1, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    :cond_0
    const/4 v1, 0x0

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    invoke-virtual {v2, p1}, Landroid/content/pm/ResolveInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, p1

    goto :goto_0

    :catch_0
    move-exception p1

    const-string v2, "ResolveInfoLoader"

    invoke-static {v2, p1}, Lcom/miui/video/framework/log/LogUtils;->e(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_1
    :goto_0
    new-instance p1, Lcom/miui/video/player/service/localvideoplayer/screenshot/ResolveInfoLoader$IconResult;

    iget-object v2, p0, Lcom/miui/video/player/service/localvideoplayer/screenshot/ResolveInfoLoader$LoadTask;->this$0:Lcom/miui/video/player/service/localvideoplayer/screenshot/ResolveInfoLoader;

    invoke-direct {p1, v2, v0, v1}, Lcom/miui/video/player/service/localvideoplayer/screenshot/ResolveInfoLoader$IconResult;-><init>(Lcom/miui/video/player/service/localvideoplayer/screenshot/ResolveInfoLoader;Landroid/graphics/drawable/Drawable;Z)V

    return-object p1
.end method

.method private loadLabel(Landroid/content/pm/ResolveInfo;)Ljava/lang/CharSequence;
    .locals 5

    iget-object v0, p0, Lcom/miui/video/player/service/localvideoplayer/screenshot/ResolveInfoLoader$LoadTask;->mContextRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    if-eqz v0, :cond_1

    :try_start_0
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v3, v3, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v3, v3, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "string"

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v2, v3, v4}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    :catch_0
    :cond_0
    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/content/pm/ResolveInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object p1

    return-object p1

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method


# virtual methods
.method protected varargs doInBackground([Lcom/miui/video/player/service/localvideoplayer/screenshot/ResolveInfoLoader$LoadingInfo;)Lcom/miui/video/player/service/localvideoplayer/screenshot/ResolveInfoLoader$LoadResult;
    .locals 4

    const/4 v0, 0x0

    aget-object p1, p1, v0

    if-eqz p1, :cond_0

    invoke-direct {p0, p1}, Lcom/miui/video/player/service/localvideoplayer/screenshot/ResolveInfoLoader$LoadTask;->loadIcon(Lcom/miui/video/player/service/localvideoplayer/screenshot/ResolveInfoLoader$LoadingInfo;)Lcom/miui/video/player/service/localvideoplayer/screenshot/ResolveInfoLoader$IconResult;

    move-result-object v0

    iget-object v1, p1, Lcom/miui/video/player/service/localvideoplayer/screenshot/ResolveInfoLoader$LoadingInfo;->mResolve:Landroid/content/pm/ResolveInfo;

    invoke-direct {p0, v1}, Lcom/miui/video/player/service/localvideoplayer/screenshot/ResolveInfoLoader$LoadTask;->loadLabel(Landroid/content/pm/ResolveInfo;)Ljava/lang/CharSequence;

    move-result-object v1

    new-instance v2, Lcom/miui/video/player/service/localvideoplayer/screenshot/ResolveInfoLoader$LoadResult;

    iget-object v3, v0, Lcom/miui/video/player/service/localvideoplayer/screenshot/ResolveInfoLoader$IconResult;->drawable:Landroid/graphics/drawable/Drawable;

    iget-boolean v0, v0, Lcom/miui/video/player/service/localvideoplayer/screenshot/ResolveInfoLoader$IconResult;->isCustomIcon:Z

    invoke-direct {v2, v3, v1, v0}, Lcom/miui/video/player/service/localvideoplayer/screenshot/ResolveInfoLoader$LoadResult;-><init>(Landroid/graphics/drawable/Drawable;Ljava/lang/CharSequence;Z)V

    invoke-virtual {v2, p1}, Lcom/miui/video/player/service/localvideoplayer/screenshot/ResolveInfoLoader$LoadResult;->setLoadingInfo(Lcom/miui/video/player/service/localvideoplayer/screenshot/ResolveInfoLoader$LoadingInfo;)Lcom/miui/video/player/service/localvideoplayer/screenshot/ResolveInfoLoader$LoadResult;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return-object p1
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, [Lcom/miui/video/player/service/localvideoplayer/screenshot/ResolveInfoLoader$LoadingInfo;

    invoke-virtual {p0, p1}, Lcom/miui/video/player/service/localvideoplayer/screenshot/ResolveInfoLoader$LoadTask;->doInBackground([Lcom/miui/video/player/service/localvideoplayer/screenshot/ResolveInfoLoader$LoadingInfo;)Lcom/miui/video/player/service/localvideoplayer/screenshot/ResolveInfoLoader$LoadResult;

    move-result-object p1

    return-object p1
.end method

.method protected onPostExecute(Lcom/miui/video/player/service/localvideoplayer/screenshot/ResolveInfoLoader$LoadResult;)V
    .locals 1

    iget-object v0, p0, Lcom/miui/video/player/service/localvideoplayer/screenshot/ResolveInfoLoader$LoadTask;->this$0:Lcom/miui/video/player/service/localvideoplayer/screenshot/ResolveInfoLoader;

    invoke-static {v0, p1}, Lcom/miui/video/player/service/localvideoplayer/screenshot/ResolveInfoLoader;->access$000(Lcom/miui/video/player/service/localvideoplayer/screenshot/ResolveInfoLoader;Lcom/miui/video/player/service/localvideoplayer/screenshot/ResolveInfoLoader$LoadResult;)V

    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/miui/video/player/service/localvideoplayer/screenshot/ResolveInfoLoader$LoadResult;

    invoke-virtual {p0, p1}, Lcom/miui/video/player/service/localvideoplayer/screenshot/ResolveInfoLoader$LoadTask;->onPostExecute(Lcom/miui/video/player/service/localvideoplayer/screenshot/ResolveInfoLoader$LoadResult;)V

    return-void
.end method
