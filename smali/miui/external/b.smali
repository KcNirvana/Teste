.class public abstract Lmiui/external/b;
.super Landroid/content/ContextWrapper;
.source ""

# interfaces
.implements Landroid/content/ComponentCallbacks2;


# instance fields
.field private bqX:Lmiui/external/a;


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/content/ContextWrapper;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method bPj(Lmiui/external/a;)V
    .locals 0

    iput-object p1, p0, Lmiui/external/b;->bqX:Lmiui/external/a;

    invoke-virtual {p0, p1}, Lmiui/external/b;->attachBaseContext(Landroid/content/Context;)V

    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1

    iget-object v0, p0, Lmiui/external/b;->bqX:Lmiui/external/a;

    invoke-virtual {v0, p1}, Lmiui/external/a;->bPg(Landroid/content/res/Configuration;)V

    return-void
.end method

.method public onCreate()V
    .locals 1

    iget-object v0, p0, Lmiui/external/b;->bqX:Lmiui/external/a;

    invoke-virtual {v0}, Lmiui/external/a;->j()V

    return-void
.end method

.method public onLowMemory()V
    .locals 1

    iget-object v0, p0, Lmiui/external/b;->bqX:Lmiui/external/a;

    invoke-virtual {v0}, Lmiui/external/a;->k()V

    return-void
.end method

.method public onTerminate()V
    .locals 1

    iget-object v0, p0, Lmiui/external/b;->bqX:Lmiui/external/a;

    invoke-virtual {v0}, Lmiui/external/a;->l()V

    return-void
.end method

.method public onTrimMemory(I)V
    .locals 1

    iget-object v0, p0, Lmiui/external/b;->bqX:Lmiui/external/a;

    invoke-virtual {v0, p1}, Lmiui/external/a;->bPf(I)V

    return-void
.end method

.method public registerComponentCallbacks(Landroid/content/ComponentCallbacks;)V
    .locals 1

    iget-object v0, p0, Lmiui/external/b;->bqX:Lmiui/external/a;

    invoke-virtual {v0, p1}, Lmiui/external/a;->registerComponentCallbacks(Landroid/content/ComponentCallbacks;)V

    return-void
.end method

.method public unregisterComponentCallbacks(Landroid/content/ComponentCallbacks;)V
    .locals 1

    iget-object v0, p0, Lmiui/external/b;->bqX:Lmiui/external/a;

    invoke-virtual {v0, p1}, Lmiui/external/a;->unregisterComponentCallbacks(Landroid/content/ComponentCallbacks;)V

    return-void
.end method
