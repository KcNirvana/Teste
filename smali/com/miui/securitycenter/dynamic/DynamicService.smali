.class public Lcom/miui/securitycenter/dynamic/DynamicService;
.super Ljava/lang/Object;
.source ""


# instance fields
.field private mContext:Landroid/content/Context;

.field private mDestroyed:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method final attach(Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/securitycenter/dynamic/DynamicService;->mContext:Landroid/content/Context;

    return-void
.end method

.method public final getContext()Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/miui/securitycenter/dynamic/DynamicService;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method public isDestroyed()Z
    .locals 1

    iget-boolean v0, p0, Lcom/miui/securitycenter/dynamic/DynamicService;->mDestroyed:Z

    return v0
.end method

.method protected onCreate()V
    .locals 0

    return-void
.end method

.method protected onDestroy()V
    .locals 0

    return-void
.end method

.method protected performCreate()V
    .locals 0

    invoke-virtual {p0}, Lcom/miui/securitycenter/dynamic/DynamicService;->onCreate()V

    return-void
.end method

.method protected performDestroy()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/miui/securitycenter/dynamic/DynamicService;->mDestroyed:Z

    invoke-virtual {p0}, Lcom/miui/securitycenter/dynamic/DynamicService;->onDestroy()V

    return-void
.end method
