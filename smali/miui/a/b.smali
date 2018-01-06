.class public abstract Lmiui/a/b;
.super Landroid/content/ContextWrapper;
.source "SourceFile"

# interfaces
.implements Landroid/content/ComponentCallbacks2;


# instance fields
.field private a:Lmiui/a/a;


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/content/ContextWrapper;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    iget-object v0, p0, Lmiui/a/b;->a:Lmiui/a/a;

    invoke-virtual {v0}, Lmiui/a/a;->d()V

    return-void
.end method

.method a(Lmiui/a/a;)V
    .locals 0

    iput-object p1, p0, Lmiui/a/b;->a:Lmiui/a/a;

    invoke-virtual {p0, p1}, Lmiui/a/b;->attachBaseContext(Landroid/content/Context;)V

    return-void
.end method

.method public b()V
    .locals 1

    iget-object v0, p0, Lmiui/a/b;->a:Lmiui/a/a;

    invoke-virtual {v0}, Lmiui/a/a;->e()V

    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1

    iget-object v0, p0, Lmiui/a/b;->a:Lmiui/a/a;

    invoke-virtual {v0, p1}, Lmiui/a/a;->a(Landroid/content/res/Configuration;)V

    return-void
.end method

.method public onLowMemory()V
    .locals 1

    iget-object v0, p0, Lmiui/a/b;->a:Lmiui/a/a;

    invoke-virtual {v0}, Lmiui/a/a;->f()V

    return-void
.end method

.method public onTrimMemory(I)V
    .locals 1

    iget-object v0, p0, Lmiui/a/b;->a:Lmiui/a/a;

    invoke-virtual {v0, p1}, Lmiui/a/a;->a(I)V

    return-void
.end method

.method public registerComponentCallbacks(Landroid/content/ComponentCallbacks;)V
    .locals 1

    iget-object v0, p0, Lmiui/a/b;->a:Lmiui/a/a;

    invoke-virtual {v0, p1}, Lmiui/a/a;->registerComponentCallbacks(Landroid/content/ComponentCallbacks;)V

    return-void
.end method

.method public unregisterComponentCallbacks(Landroid/content/ComponentCallbacks;)V
    .locals 1

    iget-object v0, p0, Lmiui/a/b;->a:Lmiui/a/a;

    invoke-virtual {v0, p1}, Lmiui/a/a;->unregisterComponentCallbacks(Landroid/content/ComponentCallbacks;)V

    return-void
.end method
