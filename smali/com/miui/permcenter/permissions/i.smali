.class Lcom/miui/permcenter/permissions/i;
.super Ljava/lang/Object;
.source ""


# instance fields
.field Pv:Lcom/miui/permission/PermissionGroupInfo;

.field Pw:Ljava/util/ArrayList;


# direct methods
.method constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/miui/permcenter/permissions/i;->Pw:Ljava/util/ArrayList;

    return-void
.end method
