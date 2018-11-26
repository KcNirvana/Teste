.class final Lcom/miui/antispam/util/l;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic Zr:Landroid/content/Context;

.field final synthetic Zs:Ljava/lang/String;


# direct methods
.method constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/antispam/util/l;->Zr:Landroid/content/Context;

    iput-object p2, p0, Lcom/miui/antispam/util/l;->Zs:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/miui/antispam/util/l;->Zr:Landroid/content/Context;

    iget-object v1, p0, Lcom/miui/antispam/util/l;->Zs:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/miui/antispam/util/h;->Yj(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method
