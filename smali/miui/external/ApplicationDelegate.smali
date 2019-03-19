.class public abstract Lmiui/external/ApplicationDelegate;
.super Landroid/content/ContextWrapper;
.source "ApplicationDelegate.java"

# interfaces
.implements Landroid/content/ComponentCallbacks2;


# instance fields
.field private a:Lmiui/external/Application;


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/content/ContextWrapper;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method a(Lmiui/external/Application;)V
    .locals 0

    iput-object p1, p0, Lmiui/external/ApplicationDelegate;->a:Lmiui/external/Application;

    invoke-virtual {p0, p1}, Lmiui/external/ApplicationDelegate;->attachBaseContext(Landroid/content/Context;)V

    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1

    iget-object v0, p0, Lmiui/external/ApplicationDelegate;->a:Lmiui/external/Application;

    invoke-virtual {v0, p1}, Lmiui/external/Application;->O(Landroid/content/res/Configuration;)V

    return-void
.end method

.method public onCreate()V
    .locals 1

    iget-object v0, p0, Lmiui/external/ApplicationDelegate;->a:Lmiui/external/Application;

    invoke-virtual {v0}, Lmiui/external/Application;->M()V

    return-void
.end method

.method public onLowMemory()V
    .locals 1

    iget-object v0, p0, Lmiui/external/ApplicationDelegate;->a:Lmiui/external/Application;

    invoke-virtual {v0}, Lmiui/external/Application;->P()V

    return-void
.end method

.method public onTerminate()V
    .locals 1

    iget-object v0, p0, Lmiui/external/ApplicationDelegate;->a:Lmiui/external/Application;

    invoke-virtual {v0}, Lmiui/external/Application;->N()V

    return-void
.end method

.method public onTrimMemory(I)V
    .locals 1

    iget-object v0, p0, Lmiui/external/ApplicationDelegate;->a:Lmiui/external/Application;

    invoke-virtual {v0, p1}, Lmiui/external/Application;->Q(I)V

    return-void
.end method

.method public registerComponentCallbacks(Landroid/content/ComponentCallbacks;)V
    .locals 1

    iget-object v0, p0, Lmiui/external/ApplicationDelegate;->a:Lmiui/external/Application;

    invoke-virtual {v0, p1}, Lmiui/external/Application;->registerComponentCallbacks(Landroid/content/ComponentCallbacks;)V

    return-void
.end method

.method public unregisterComponentCallbacks(Landroid/content/ComponentCallbacks;)V
    .locals 1

    iget-object v0, p0, Lmiui/external/ApplicationDelegate;->a:Lmiui/external/Application;

    invoke-virtual {v0, p1}, Lmiui/external/Application;->unregisterComponentCallbacks(Landroid/content/ComponentCallbacks;)V

    return-void
.end method
