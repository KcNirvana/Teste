.class public abstract Lcom/miui/securitycenter/dynamic/AbsDynamicManager;
.super Ljava/lang/Object;
.source ""


# instance fields
.field private volatile mService:Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method final attach(Lcom/miui/securitycenter/dynamic/DynamicService;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/securitycenter/dynamic/AbsDynamicManager;->mService:Ljava/lang/Object;

    return-void
.end method

.method public getService()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/miui/securitycenter/dynamic/AbsDynamicManager;->mService:Ljava/lang/Object;

    return-object v0
.end method
