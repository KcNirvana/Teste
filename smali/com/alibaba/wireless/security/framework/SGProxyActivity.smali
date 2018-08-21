.class public Lcom/alibaba/wireless/security/framework/SGProxyActivity;
.super Landroid/app/Activity;


# instance fields
.field private a:Lcom/alibaba/wireless/security/framework/d;

.field private b:Landroid/content/res/Resources$Theme;

.field private c:Ljava/lang/String;

.field private d:Landroid/app/Activity;

.field private e:Lcom/alibaba/wireless/security/framework/a;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method private a()V
    .locals 8

    iget-object v0, p0, Lcom/alibaba/wireless/security/framework/SGProxyActivity;->a:Lcom/alibaba/wireless/security/framework/d;

    iget-object v0, v0, Lcom/alibaba/wireless/security/framework/d;->f:Landroid/content/res/Resources;

    invoke-virtual {v0}, Landroid/content/res/Resources;->newTheme()Landroid/content/res/Resources$Theme;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/wireless/security/framework/SGProxyActivity;->b:Landroid/content/res/Resources$Theme;

    iget-object v0, p0, Lcom/alibaba/wireless/security/framework/SGProxyActivity;->b:Landroid/content/res/Resources$Theme;

    invoke-super {p0}, Landroid/app/Activity;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/res/Resources$Theme;->setTo(Landroid/content/res/Resources$Theme;)V

    iget-object v0, p0, Lcom/alibaba/wireless/security/framework/SGProxyActivity;->a:Lcom/alibaba/wireless/security/framework/d;

    iget-object v0, v0, Lcom/alibaba/wireless/security/framework/d;->g:Landroid/content/pm/PackageInfo;

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v2, v0, Landroid/content/pm/ApplicationInfo;->theme:I

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/alibaba/wireless/security/framework/SGProxyActivity;->a:Lcom/alibaba/wireless/security/framework/d;

    iget-object v0, v0, Lcom/alibaba/wireless/security/framework/d;->g:Landroid/content/pm/PackageInfo;

    iget-object v4, v0, Landroid/content/pm/PackageInfo;->activities:[Landroid/content/pm/ActivityInfo;

    array-length v5, v4

    const/4 v0, 0x0

    move v3, v0

    :goto_0
    if-ge v3, v5, :cond_5

    aget-object v0, v4, v3

    iget-object v6, v0, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    iget-object v7, p0, Lcom/alibaba/wireless/security/framework/SGProxyActivity;->c:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    iget v1, v0, Landroid/content/pm/ActivityInfo;->theme:I

    if-eqz v1, :cond_1

    iget v1, v0, Landroid/content/pm/ActivityInfo;->theme:I

    :goto_1
    iget-object v2, p0, Lcom/alibaba/wireless/security/framework/SGProxyActivity;->b:Landroid/content/res/Resources$Theme;

    const/4 v3, 0x1

    invoke-virtual {v2, v1, v3}, Landroid/content/res/Resources$Theme;->applyStyle(IZ)V

    invoke-virtual {p0, v1}, Lcom/alibaba/wireless/security/framework/SGProxyActivity;->setTheme(I)V

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/alibaba/wireless/security/framework/SGProxyActivity;->getWindow()Landroid/view/Window;

    move-result-object v1

    iget v0, v0, Landroid/content/pm/ActivityInfo;->softInputMode:I

    invoke-virtual {v1, v0}, Landroid/view/Window;->setSoftInputMode(I)V

    :cond_0
    return-void

    :cond_1
    if-eqz v2, :cond_2

    move v1, v2

    goto :goto_1

    :cond_2
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0xe

    if-lt v1, v2, :cond_3

    const v1, 0x1030128

    goto :goto_1

    :cond_3
    const v1, 0x1030005

    goto :goto_1

    :cond_4
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_0

    :cond_5
    move-object v0, v1

    move v1, v2

    goto :goto_1
.end method


# virtual methods
.method public dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 1

    invoke-super {p0, p1, p2, p3, p4}, Landroid/app/Activity;->dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    iget-object v0, p0, Lcom/alibaba/wireless/security/framework/SGProxyActivity;->e:Lcom/alibaba/wireless/security/framework/a;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alibaba/wireless/security/framework/SGProxyActivity;->e:Lcom/alibaba/wireless/security/framework/a;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/alibaba/wireless/security/framework/a;->a(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public getAssets()Landroid/content/res/AssetManager;
    .locals 1

    iget-object v0, p0, Lcom/alibaba/wireless/security/framework/SGProxyActivity;->a:Lcom/alibaba/wireless/security/framework/d;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alibaba/wireless/security/framework/SGProxyActivity;->a:Lcom/alibaba/wireless/security/framework/d;

    iget-object v0, v0, Lcom/alibaba/wireless/security/framework/d;->e:Landroid/content/res/AssetManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alibaba/wireless/security/framework/SGProxyActivity;->a:Lcom/alibaba/wireless/security/framework/d;

    iget-object v0, v0, Lcom/alibaba/wireless/security/framework/d;->e:Landroid/content/res/AssetManager;

    :goto_0
    return-object v0

    :cond_0
    invoke-super {p0}, Landroid/app/Activity;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    goto :goto_0
.end method

.method public getClassLoader()Ljava/lang/ClassLoader;
    .locals 1

    iget-object v0, p0, Lcom/alibaba/wireless/security/framework/SGProxyActivity;->a:Lcom/alibaba/wireless/security/framework/d;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alibaba/wireless/security/framework/SGProxyActivity;->a:Lcom/alibaba/wireless/security/framework/d;

    iget-object v0, v0, Lcom/alibaba/wireless/security/framework/d;->d:Ldalvik/system/DexClassLoader;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alibaba/wireless/security/framework/SGProxyActivity;->a:Lcom/alibaba/wireless/security/framework/d;

    iget-object v0, v0, Lcom/alibaba/wireless/security/framework/d;->d:Ldalvik/system/DexClassLoader;

    :goto_0
    return-object v0

    :cond_0
    invoke-super {p0}, Landroid/app/Activity;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    goto :goto_0
.end method

.method public getResources()Landroid/content/res/Resources;
    .locals 1

    iget-object v0, p0, Lcom/alibaba/wireless/security/framework/SGProxyActivity;->a:Lcom/alibaba/wireless/security/framework/d;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alibaba/wireless/security/framework/SGProxyActivity;->a:Lcom/alibaba/wireless/security/framework/d;

    iget-object v0, v0, Lcom/alibaba/wireless/security/framework/d;->f:Landroid/content/res/Resources;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alibaba/wireless/security/framework/SGProxyActivity;->a:Lcom/alibaba/wireless/security/framework/d;

    iget-object v0, v0, Lcom/alibaba/wireless/security/framework/d;->f:Landroid/content/res/Resources;

    :goto_0
    return-object v0

    :cond_0
    invoke-super {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    goto :goto_0
.end method

.method public getTheme()Landroid/content/res/Resources$Theme;
    .locals 1

    iget-object v0, p0, Lcom/alibaba/wireless/security/framework/SGProxyActivity;->b:Landroid/content/res/Resources$Theme;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alibaba/wireless/security/framework/SGProxyActivity;->b:Landroid/content/res/Resources$Theme;

    :goto_0
    return-object v0

    :cond_0
    invoke-super {p0}, Landroid/app/Activity;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v0

    goto :goto_0
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 5

    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onActivityResult(IILandroid/content/Intent;)V

    iget-object v0, p0, Lcom/alibaba/wireless/security/framework/SGProxyActivity;->e:Lcom/alibaba/wireless/security/framework/a;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alibaba/wireless/security/framework/SGProxyActivity;->e:Lcom/alibaba/wireless/security/framework/a;

    invoke-virtual {v0}, Lcom/alibaba/wireless/security/framework/a;->b()Lcom/alibaba/wireless/security/framework/a/d;

    move-result-object v0

    const-string/jumbo v1, "onActivityResult"

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x2

    aput-object p3, v2, v3

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/wireless/security/framework/a/d;->a(Ljava/lang/String;[Ljava/lang/Object;)Lcom/alibaba/wireless/security/framework/a/d;

    :cond_0
    return-void
.end method

.method public onAttachFragment(Landroid/app/Fragment;)V
    .locals 2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xa

    if-le v0, v1, :cond_0

    invoke-super {p0, p1}, Landroid/app/Activity;->onAttachFragment(Landroid/app/Fragment;)V

    iget-object v0, p0, Lcom/alibaba/wireless/security/framework/SGProxyActivity;->d:Landroid/app/Activity;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alibaba/wireless/security/framework/SGProxyActivity;->d:Landroid/app/Activity;

    invoke-virtual {v0, p1}, Landroid/app/Activity;->onAttachFragment(Landroid/app/Fragment;)V

    :cond_0
    return-void
.end method

.method public onAttachedToWindow()V
    .locals 1

    invoke-super {p0}, Landroid/app/Activity;->onAttachedToWindow()V

    iget-object v0, p0, Lcom/alibaba/wireless/security/framework/SGProxyActivity;->d:Landroid/app/Activity;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alibaba/wireless/security/framework/SGProxyActivity;->d:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->onAttachedToWindow()V

    :cond_0
    return-void
.end method

.method public onBackPressed()V
    .locals 1

    invoke-super {p0}, Landroid/app/Activity;->onBackPressed()V

    iget-object v0, p0, Lcom/alibaba/wireless/security/framework/SGProxyActivity;->e:Lcom/alibaba/wireless/security/framework/a;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alibaba/wireless/security/framework/SGProxyActivity;->e:Lcom/alibaba/wireless/security/framework/a;

    invoke-virtual {v0}, Lcom/alibaba/wireless/security/framework/a;->i()V

    :cond_0
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1

    invoke-super {p0, p1}, Landroid/app/Activity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    iget-object v0, p0, Lcom/alibaba/wireless/security/framework/SGProxyActivity;->e:Lcom/alibaba/wireless/security/framework/a;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alibaba/wireless/security/framework/SGProxyActivity;->e:Lcom/alibaba/wireless/security/framework/a;

    invoke-virtual {v0, p1}, Lcom/alibaba/wireless/security/framework/a;->a(Landroid/content/res/Configuration;)V

    :cond_0
    return-void
.end method

.method public onContentChanged()V
    .locals 1

    invoke-super {p0}, Landroid/app/Activity;->onContentChanged()V

    iget-object v0, p0, Lcom/alibaba/wireless/security/framework/SGProxyActivity;->d:Landroid/app/Activity;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alibaba/wireless/security/framework/SGProxyActivity;->d:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->onContentChanged()V

    :cond_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/alibaba/wireless/security/framework/SGProxyActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "sg.extra.pluginname"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "sg.extra.class"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/alibaba/wireless/security/framework/SGProxyActivity;->c:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "mRemoteActivityClassName="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/alibaba/wireless/security/framework/SGProxyActivity;->c:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " mPluginName="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/alibaba/wireless/security/framework/a/a;->b(Ljava/lang/String;)V

    invoke-static {p0}, Lcom/alibaba/wireless/security/framework/e;->a(Landroid/content/Context;)Lcom/alibaba/wireless/security/framework/e;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/alibaba/wireless/security/framework/e;->b(Ljava/lang/String;)Lcom/alibaba/wireless/security/framework/d;

    move-result-object v1

    iput-object v1, p0, Lcom/alibaba/wireless/security/framework/SGProxyActivity;->a:Lcom/alibaba/wireless/security/framework/d;

    iget-object v1, p0, Lcom/alibaba/wireless/security/framework/SGProxyActivity;->a:Lcom/alibaba/wireless/security/framework/d;

    iget-object v1, v1, Lcom/alibaba/wireless/security/framework/d;->d:Ldalvik/system/DexClassLoader;

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setExtrasClassLoader(Ljava/lang/ClassLoader;)V

    iget-object v0, p0, Lcom/alibaba/wireless/security/framework/SGProxyActivity;->a:Lcom/alibaba/wireless/security/framework/d;

    invoke-virtual {v0, p0}, Lcom/alibaba/wireless/security/framework/d;->a(Landroid/content/Context;)Z

    invoke-direct {p0}, Lcom/alibaba/wireless/security/framework/SGProxyActivity;->a()V

    iget-object v0, p0, Lcom/alibaba/wireless/security/framework/SGProxyActivity;->a:Lcom/alibaba/wireless/security/framework/d;

    iget-object v1, p0, Lcom/alibaba/wireless/security/framework/SGProxyActivity;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/alibaba/wireless/security/framework/d;->b(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    iput-object v0, p0, Lcom/alibaba/wireless/security/framework/SGProxyActivity;->d:Landroid/app/Activity;

    new-instance v0, Lcom/alibaba/wireless/security/framework/a;

    iget-object v1, p0, Lcom/alibaba/wireless/security/framework/SGProxyActivity;->d:Landroid/app/Activity;

    iget-object v2, p0, Lcom/alibaba/wireless/security/framework/SGProxyActivity;->a:Lcom/alibaba/wireless/security/framework/d;

    iget-object v2, v2, Lcom/alibaba/wireless/security/framework/d;->i:Landroid/app/Application;

    iget-object v3, p0, Lcom/alibaba/wireless/security/framework/SGProxyActivity;->a:Lcom/alibaba/wireless/security/framework/d;

    invoke-direct {v0, p0, v1, v2, v3}, Lcom/alibaba/wireless/security/framework/a;-><init>(Landroid/app/Activity;Landroid/app/Activity;Landroid/app/Application;Lcom/alibaba/wireless/security/framework/d;)V

    iput-object v0, p0, Lcom/alibaba/wireless/security/framework/SGProxyActivity;->e:Lcom/alibaba/wireless/security/framework/a;

    iget-object v0, p0, Lcom/alibaba/wireless/security/framework/SGProxyActivity;->e:Lcom/alibaba/wireless/security/framework/a;

    invoke-virtual {v0}, Lcom/alibaba/wireless/security/framework/a;->a()V

    iget-object v0, p0, Lcom/alibaba/wireless/security/framework/SGProxyActivity;->e:Lcom/alibaba/wireless/security/framework/a;

    invoke-virtual {v0, p1}, Lcom/alibaba/wireless/security/framework/a;->a(Landroid/os/Bundle;)V

    return-void
.end method

.method public onCreateDescription()Ljava/lang/CharSequence;
    .locals 1

    iget-object v0, p0, Lcom/alibaba/wireless/security/framework/SGProxyActivity;->d:Landroid/app/Activity;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alibaba/wireless/security/framework/SGProxyActivity;->d:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->onCreateDescription()Ljava/lang/CharSequence;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    invoke-super {p0}, Landroid/app/Activity;->onCreateDescription()Ljava/lang/CharSequence;

    move-result-object v0

    goto :goto_0
.end method

.method public onCreatePanelView(I)Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/alibaba/wireless/security/framework/SGProxyActivity;->d:Landroid/app/Activity;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alibaba/wireless/security/framework/SGProxyActivity;->d:Landroid/app/Activity;

    invoke-virtual {v0, p1}, Landroid/app/Activity;->onCreatePanelView(I)Landroid/view/View;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreatePanelView(I)Landroid/view/View;

    move-result-object v0

    goto :goto_0
.end method

.method public onCreateThumbnail(Landroid/graphics/Bitmap;Landroid/graphics/Canvas;)Z
    .locals 1

    iget-object v0, p0, Lcom/alibaba/wireless/security/framework/SGProxyActivity;->d:Landroid/app/Activity;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alibaba/wireless/security/framework/SGProxyActivity;->d:Landroid/app/Activity;

    invoke-virtual {v0, p1, p2}, Landroid/app/Activity;->onCreateThumbnail(Landroid/graphics/Bitmap;Landroid/graphics/Canvas;)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onCreateThumbnail(Landroid/graphics/Bitmap;Landroid/graphics/Canvas;)Z

    move-result v0

    goto :goto_0
.end method

.method public onCreateView(Landroid/view/View;Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/alibaba/wireless/security/framework/SGProxyActivity;->e:Lcom/alibaba/wireless/security/framework/a;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alibaba/wireless/security/framework/SGProxyActivity;->e:Lcom/alibaba/wireless/security/framework/a;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/alibaba/wireless/security/framework/a;->a(Landroid/view/View;Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    invoke-super {p0, p1, p2, p3, p4}, Landroid/app/Activity;->onCreateView(Landroid/view/View;Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;

    move-result-object v0

    goto :goto_0
.end method

.method public onCreateView(Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/alibaba/wireless/security/framework/SGProxyActivity;->e:Lcom/alibaba/wireless/security/framework/a;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alibaba/wireless/security/framework/SGProxyActivity;->e:Lcom/alibaba/wireless/security/framework/a;

    invoke-virtual {v0, p1, p2, p3}, Lcom/alibaba/wireless/security/framework/a;->a(Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onCreateView(Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;

    move-result-object v0

    goto :goto_0
.end method

.method protected onDestroy()V
    .locals 1

    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    iget-object v0, p0, Lcom/alibaba/wireless/security/framework/SGProxyActivity;->e:Lcom/alibaba/wireless/security/framework/a;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alibaba/wireless/security/framework/SGProxyActivity;->e:Lcom/alibaba/wireless/security/framework/a;

    invoke-virtual {v0}, Lcom/alibaba/wireless/security/framework/a;->e()V

    :cond_0
    return-void
.end method

.method public onDetachedFromWindow()V
    .locals 1

    iget-object v0, p0, Lcom/alibaba/wireless/security/framework/SGProxyActivity;->e:Lcom/alibaba/wireless/security/framework/a;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alibaba/wireless/security/framework/SGProxyActivity;->e:Lcom/alibaba/wireless/security/framework/a;

    invoke-virtual {v0}, Lcom/alibaba/wireless/security/framework/a;->k()V

    :cond_0
    invoke-super {p0}, Landroid/app/Activity;->onDetachedFromWindow()V

    return-void
.end method

.method public onGenericMotionEvent(Landroid/view/MotionEvent;)Z
    .locals 2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-le v0, v1, :cond_1

    iget-object v0, p0, Lcom/alibaba/wireless/security/framework/SGProxyActivity;->d:Landroid/app/Activity;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alibaba/wireless/security/framework/SGProxyActivity;->d:Landroid/app/Activity;

    invoke-virtual {v0, p1}, Landroid/app/Activity;->onGenericMotionEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1}, Landroid/app/Activity;->onGenericMotionEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1

    iget-object v0, p0, Lcom/alibaba/wireless/security/framework/SGProxyActivity;->e:Lcom/alibaba/wireless/security/framework/a;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alibaba/wireless/security/framework/SGProxyActivity;->e:Lcom/alibaba/wireless/security/framework/a;

    invoke-virtual {v0, p1, p2}, Lcom/alibaba/wireless/security/framework/a;->a(ILandroid/view/KeyEvent;)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 1

    iget-object v0, p0, Lcom/alibaba/wireless/security/framework/SGProxyActivity;->d:Landroid/app/Activity;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alibaba/wireless/security/framework/SGProxyActivity;->d:Landroid/app/Activity;

    invoke-virtual {v0, p1, p2}, Landroid/app/Activity;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 1

    invoke-super {p0, p1}, Landroid/app/Activity;->onNewIntent(Landroid/content/Intent;)V

    iget-object v0, p0, Lcom/alibaba/wireless/security/framework/SGProxyActivity;->e:Lcom/alibaba/wireless/security/framework/a;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alibaba/wireless/security/framework/SGProxyActivity;->e:Lcom/alibaba/wireless/security/framework/a;

    invoke-virtual {v0, p1}, Lcom/alibaba/wireless/security/framework/a;->a(Landroid/content/Intent;)V

    :cond_0
    return-void
.end method

.method public onOptionsMenuClosed(Landroid/view/Menu;)V
    .locals 1

    invoke-super {p0, p1}, Landroid/app/Activity;->onOptionsMenuClosed(Landroid/view/Menu;)V

    iget-object v0, p0, Lcom/alibaba/wireless/security/framework/SGProxyActivity;->d:Landroid/app/Activity;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alibaba/wireless/security/framework/SGProxyActivity;->d:Landroid/app/Activity;

    invoke-virtual {v0, p1}, Landroid/app/Activity;->onOptionsMenuClosed(Landroid/view/Menu;)V

    :cond_0
    return-void
.end method

.method public onPanelClosed(ILandroid/view/Menu;)V
    .locals 1

    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onPanelClosed(ILandroid/view/Menu;)V

    iget-object v0, p0, Lcom/alibaba/wireless/security/framework/SGProxyActivity;->d:Landroid/app/Activity;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alibaba/wireless/security/framework/SGProxyActivity;->d:Landroid/app/Activity;

    invoke-virtual {v0, p1, p2}, Landroid/app/Activity;->onPanelClosed(ILandroid/view/Menu;)V

    :cond_0
    return-void
.end method

.method protected onPause()V
    .locals 1

    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    iget-object v0, p0, Lcom/alibaba/wireless/security/framework/SGProxyActivity;->e:Lcom/alibaba/wireless/security/framework/a;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alibaba/wireless/security/framework/SGProxyActivity;->e:Lcom/alibaba/wireless/security/framework/a;

    invoke-virtual {v0}, Lcom/alibaba/wireless/security/framework/a;->h()V

    :cond_0
    return-void
.end method

.method protected onPostResume()V
    .locals 1

    invoke-super {p0}, Landroid/app/Activity;->onPostResume()V

    iget-object v0, p0, Lcom/alibaba/wireless/security/framework/SGProxyActivity;->e:Lcom/alibaba/wireless/security/framework/a;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alibaba/wireless/security/framework/SGProxyActivity;->e:Lcom/alibaba/wireless/security/framework/a;

    invoke-virtual {v0}, Lcom/alibaba/wireless/security/framework/a;->j()V

    :cond_0
    return-void
.end method

.method protected onRestart()V
    .locals 1

    invoke-super {p0}, Landroid/app/Activity;->onRestart()V

    iget-object v0, p0, Lcom/alibaba/wireless/security/framework/SGProxyActivity;->e:Lcom/alibaba/wireless/security/framework/a;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alibaba/wireless/security/framework/SGProxyActivity;->e:Lcom/alibaba/wireless/security/framework/a;

    invoke-virtual {v0}, Lcom/alibaba/wireless/security/framework/a;->g()V

    :cond_0
    return-void
.end method

.method protected onRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 1

    invoke-super {p0, p1}, Landroid/app/Activity;->onRestoreInstanceState(Landroid/os/Bundle;)V

    iget-object v0, p0, Lcom/alibaba/wireless/security/framework/SGProxyActivity;->e:Lcom/alibaba/wireless/security/framework/a;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alibaba/wireless/security/framework/SGProxyActivity;->e:Lcom/alibaba/wireless/security/framework/a;

    invoke-virtual {v0, p1}, Lcom/alibaba/wireless/security/framework/a;->c(Landroid/os/Bundle;)V

    :cond_0
    return-void
.end method

.method protected onResume()V
    .locals 1

    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    iget-object v0, p0, Lcom/alibaba/wireless/security/framework/SGProxyActivity;->e:Lcom/alibaba/wireless/security/framework/a;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alibaba/wireless/security/framework/SGProxyActivity;->e:Lcom/alibaba/wireless/security/framework/a;

    invoke-virtual {v0}, Lcom/alibaba/wireless/security/framework/a;->d()V

    :cond_0
    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 1

    invoke-super {p0, p1}, Landroid/app/Activity;->onSaveInstanceState(Landroid/os/Bundle;)V

    iget-object v0, p0, Lcom/alibaba/wireless/security/framework/SGProxyActivity;->e:Lcom/alibaba/wireless/security/framework/a;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alibaba/wireless/security/framework/SGProxyActivity;->e:Lcom/alibaba/wireless/security/framework/a;

    invoke-virtual {v0, p1}, Lcom/alibaba/wireless/security/framework/a;->b(Landroid/os/Bundle;)V

    :cond_0
    return-void
.end method

.method protected onStart()V
    .locals 1

    invoke-super {p0}, Landroid/app/Activity;->onStart()V

    iget-object v0, p0, Lcom/alibaba/wireless/security/framework/SGProxyActivity;->e:Lcom/alibaba/wireless/security/framework/a;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alibaba/wireless/security/framework/SGProxyActivity;->e:Lcom/alibaba/wireless/security/framework/a;

    invoke-virtual {v0}, Lcom/alibaba/wireless/security/framework/a;->c()V

    :cond_0
    return-void
.end method

.method protected onStop()V
    .locals 1

    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    iget-object v0, p0, Lcom/alibaba/wireless/security/framework/SGProxyActivity;->e:Lcom/alibaba/wireless/security/framework/a;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alibaba/wireless/security/framework/SGProxyActivity;->e:Lcom/alibaba/wireless/security/framework/a;

    invoke-virtual {v0}, Lcom/alibaba/wireless/security/framework/a;->f()V

    :cond_0
    return-void
.end method

.method public startActivity(Landroid/content/Intent;)V
    .locals 3

    invoke-virtual {p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "start activity: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/alibaba/wireless/security/framework/a/a;->b(Ljava/lang/String;)V

    invoke-super {p0, p1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public startService(Landroid/content/Intent;)Landroid/content/ComponentName;
    .locals 1

    invoke-super {p0, p1}, Landroid/app/Activity;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    move-result-object v0

    return-object v0
.end method
