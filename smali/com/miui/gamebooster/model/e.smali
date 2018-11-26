.class public Lcom/miui/gamebooster/model/e;
.super Ljava/lang/Object;
.source ""


# instance fields
.field private kU:Lcom/miui/gamebooster/gamead/InternalAdWall;

.field private kV:Landroid/content/pm/ApplicationInfo;

.field private kW:Landroid/graphics/drawable/Drawable;

.field private kX:Z

.field private kY:Ljava/lang/CharSequence;


# direct methods
.method public constructor <init>(Landroid/content/pm/ApplicationInfo;ZLjava/lang/CharSequence;Landroid/graphics/drawable/Drawable;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/miui/gamebooster/model/e;->kV:Landroid/content/pm/ApplicationInfo;

    iput-boolean p2, p0, Lcom/miui/gamebooster/model/e;->kX:Z

    iput-object p3, p0, Lcom/miui/gamebooster/model/e;->kY:Ljava/lang/CharSequence;

    iput-object p4, p0, Lcom/miui/gamebooster/model/e;->kW:Landroid/graphics/drawable/Drawable;

    return-void
.end method


# virtual methods
.method public mP(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/miui/gamebooster/model/e;->kX:Z

    return-void
.end method

.method public mQ()Z
    .locals 1

    iget-boolean v0, p0, Lcom/miui/gamebooster/model/e;->kX:Z

    return v0
.end method

.method public mR()Landroid/content/pm/ApplicationInfo;
    .locals 1

    iget-object v0, p0, Lcom/miui/gamebooster/model/e;->kV:Landroid/content/pm/ApplicationInfo;

    return-object v0
.end method

.method public mS()Ljava/lang/CharSequence;
    .locals 1

    iget-object v0, p0, Lcom/miui/gamebooster/model/e;->kY:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public mT()Lcom/miui/gamebooster/gamead/InternalAdWall;
    .locals 1

    iget-object v0, p0, Lcom/miui/gamebooster/model/e;->kU:Lcom/miui/gamebooster/gamead/InternalAdWall;

    return-object v0
.end method

.method public mU(Lcom/miui/gamebooster/gamead/InternalAdWall;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/gamebooster/model/e;->kU:Lcom/miui/gamebooster/gamead/InternalAdWall;

    return-void
.end method
