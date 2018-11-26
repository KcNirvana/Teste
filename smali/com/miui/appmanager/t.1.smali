.class Lcom/miui/appmanager/t;
.super Ljava/lang/Object;
.source ""


# instance fields
.field aVS:Landroid/util/SparseArray;

.field aVT:Landroid/util/SparseArray;

.field final synthetic aVU:Lcom/miui/appmanager/AppManagerMainActivity;


# direct methods
.method constructor <init>(Lcom/miui/appmanager/AppManagerMainActivity;)V
    .locals 1

    iput-object p1, p0, Lcom/miui/appmanager/t;->aVU:Lcom/miui/appmanager/AppManagerMainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/miui/appmanager/t;->aVS:Landroid/util/SparseArray;

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/miui/appmanager/t;->aVT:Landroid/util/SparseArray;

    return-void
.end method
