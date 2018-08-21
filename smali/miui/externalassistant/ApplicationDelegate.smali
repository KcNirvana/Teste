.class public abstract Lmiui/externalassistant/ApplicationDelegate;
.super Landroid/content/ContextWrapper;
.source "ApplicationDelegate.java"

# interfaces
.implements Landroid/content/ComponentCallbacks2;


# instance fields
.field private mApplication:Lmiui/externalassistant/Application;


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/content/ContextWrapper;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method attach(Lmiui/externalassistant/Application;)V
    .locals 0

    iput-object p1, p0, Lmiui/externalassistant/ApplicationDelegate;->mApplication:Lmiui/externalassistant/Application;

    invoke-virtual {p0, p1}, Lmiui/externalassistant/ApplicationDelegate;->attachBaseContext(Landroid/content/Context;)V

    return-void
.end method

.method public getApplication()Lmiui/externalassistant/Application;
    .locals 1

    iget-object v0, p0, Lmiui/externalassistant/ApplicationDelegate;->mApplication:Lmiui/externalassistant/Application;

    return-object v0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1

    iget-object v0, p0, Lmiui/externalassistant/ApplicationDelegate;->mApplication:Lmiui/externalassistant/Application;

    invoke-virtual {v0, p1}, Lmiui/externalassistant/Application;->superOnConfigurationChanged(Landroid/content/res/Configuration;)V

    return-void
.end method

.method public onCreate()V
    .locals 1

    iget-object v0, p0, Lmiui/externalassistant/ApplicationDelegate;->mApplication:Lmiui/externalassistant/Application;

    invoke-virtual {v0}, Lmiui/externalassistant/Application;->superOnCreate()V

    return-void
.end method

.method public onLowMemory()V
    .locals 1

    iget-object v0, p0, Lmiui/externalassistant/ApplicationDelegate;->mApplication:Lmiui/externalassistant/Application;

    invoke-virtual {v0}, Lmiui/externalassistant/Application;->superOnLowMemory()V

    return-void
.end method

.method public onTerminate()V
    .locals 1

    iget-object v0, p0, Lmiui/externalassistant/ApplicationDelegate;->mApplication:Lmiui/externalassistant/Application;

    invoke-virtual {v0}, Lmiui/externalassistant/Application;->superOnTerminate()V

    return-void
.end method

.method public onTrimMemory(I)V
    .locals 1

    iget-object v0, p0, Lmiui/externalassistant/ApplicationDelegate;->mApplication:Lmiui/externalassistant/Application;

    invoke-virtual {v0, p1}, Lmiui/externalassistant/Application;->superOnTrimMemory(I)V

    return-void
.end method

.method public registerActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V
    .locals 1

    iget-object v0, p0, Lmiui/externalassistant/ApplicationDelegate;->mApplication:Lmiui/externalassistant/Application;

    invoke-virtual {v0, p1}, Lmiui/externalassistant/Application;->registerActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    return-void
.end method

.method public registerComponentCallbacks(Landroid/content/ComponentCallbacks;)V
    .locals 1

    iget-object v0, p0, Lmiui/externalassistant/ApplicationDelegate;->mApplication:Lmiui/externalassistant/Application;

    invoke-virtual {v0, p1}, Lmiui/externalassistant/Application;->registerComponentCallbacks(Landroid/content/ComponentCallbacks;)V

    return-void
.end method

.method public unregisterActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V
    .locals 1

    iget-object v0, p0, Lmiui/externalassistant/ApplicationDelegate;->mApplication:Lmiui/externalassistant/Application;

    invoke-virtual {v0, p1}, Lmiui/externalassistant/Application;->unregisterActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    return-void
.end method

.method public unregisterComponentCallbacks(Landroid/content/ComponentCallbacks;)V
    .locals 1

    iget-object v0, p0, Lmiui/externalassistant/ApplicationDelegate;->mApplication:Lmiui/externalassistant/Application;

    invoke-virtual {v0, p1}, Lmiui/externalassistant/Application;->unregisterComponentCallbacks(Landroid/content/ComponentCallbacks;)V

    return-void
.end method
