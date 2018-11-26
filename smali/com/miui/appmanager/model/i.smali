.class public Lcom/miui/appmanager/model/i;
.super Lcom/miui/appmanager/model/k;
.source ""


# instance fields
.field private aPU:Landroid/content/pm/ApplicationInfo;

.field private aPV:J

.field private aPW:Z

.field private aPX:Z

.field private aPY:Z

.field private aPZ:Ljava/lang/String;

.field private aQa:Lcom/miui/appmanager/b;

.field private aQb:Ljava/lang/String;

.field private aQc:J

.field private aQd:Ljava/lang/String;

.field private aQe:J

.field private aQf:Ljava/lang/String;

.field private enabled:Z

.field private iconUrl:Ljava/lang/String;

.field private packageName:Ljava/lang/String;

.field private uid:I


# direct methods
.method public constructor <init>()V
    .locals 4

    const-wide/16 v2, -0x1

    const v0, 0x7f03019e

    invoke-direct {p0, v0}, Lcom/miui/appmanager/model/k;-><init>(I)V

    iput-wide v2, p0, Lcom/miui/appmanager/model/i;->aQe:J

    iput-wide v2, p0, Lcom/miui/appmanager/model/i;->aQc:J

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/miui/appmanager/model/i;->enabled:Z

    return-void
.end method

.method static synthetic bhA(Lcom/miui/appmanager/model/i;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/miui/appmanager/model/i;->aQb:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic bhB(Lcom/miui/appmanager/model/i;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/miui/appmanager/model/i;->aQd:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic bhC(Lcom/miui/appmanager/model/i;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/miui/appmanager/model/i;->aQf:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic bhv(Lcom/miui/appmanager/model/i;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/miui/appmanager/model/i;->enabled:Z

    return v0
.end method

.method static synthetic bhw(Lcom/miui/appmanager/model/i;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/miui/appmanager/model/i;->iconUrl:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic bhx(Lcom/miui/appmanager/model/i;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/miui/appmanager/model/i;->aPW:Z

    return v0
.end method

.method static synthetic bhy(Lcom/miui/appmanager/model/i;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/miui/appmanager/model/i;->aPX:Z

    return v0
.end method

.method static synthetic bhz(Lcom/miui/appmanager/model/i;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/miui/appmanager/model/i;->aPZ:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public bhd()Landroid/content/pm/ApplicationInfo;
    .locals 1

    iget-object v0, p0, Lcom/miui/appmanager/model/i;->aPU:Landroid/content/pm/ApplicationInfo;

    return-object v0
.end method

.method public bhe()J
    .locals 2

    iget-wide v0, p0, Lcom/miui/appmanager/model/i;->aPV:J

    return-wide v0
.end method

.method public bhf()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/miui/appmanager/model/i;->aPZ:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/appmanager/model/i;->aPZ:Ljava/lang/String;

    :goto_0
    return-object v0

    :cond_0
    const-string/jumbo v0, ""

    goto :goto_0
.end method

.method public bhg()Lcom/miui/appmanager/b;
    .locals 1

    iget-object v0, p0, Lcom/miui/appmanager/model/i;->aQa:Lcom/miui/appmanager/b;

    return-object v0
.end method

.method public bhh()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/miui/appmanager/model/i;->aQb:Ljava/lang/String;

    return-object v0
.end method

.method public bhi()J
    .locals 2

    iget-wide v0, p0, Lcom/miui/appmanager/model/i;->aQc:J

    return-wide v0
.end method

.method public bhj()J
    .locals 2

    iget-wide v0, p0, Lcom/miui/appmanager/model/i;->aQe:J

    return-wide v0
.end method

.method public bhk()Z
    .locals 1

    iget-boolean v0, p0, Lcom/miui/appmanager/model/i;->aPX:Z

    return v0
.end method

.method public bhl(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/appmanager/model/i;->iconUrl:Ljava/lang/String;

    return-void
.end method

.method public bhm(Landroid/content/pm/PackageInfo;)V
    .locals 2

    iget-object v0, p1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iput-object v0, p0, Lcom/miui/appmanager/model/i;->aPU:Landroid/content/pm/ApplicationInfo;

    iget-object v0, p1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    iput v0, p0, Lcom/miui/appmanager/model/i;->uid:I

    iget-object v0, p1, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    iput-object v0, p0, Lcom/miui/appmanager/model/i;->packageName:Ljava/lang/String;

    iget-wide v0, p1, Landroid/content/pm/PackageInfo;->firstInstallTime:J

    iput-wide v0, p0, Lcom/miui/appmanager/model/i;->aPV:J

    return-void
.end method

.method public bhn(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/miui/appmanager/model/i;->enabled:Z

    return-void
.end method

.method public bho(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/miui/appmanager/model/i;->aPX:Z

    return-void
.end method

.method public bhp(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/miui/appmanager/model/i;->aPY:Z

    return-void
.end method

.method public bhq(Lcom/miui/appmanager/b;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/appmanager/model/i;->aQa:Lcom/miui/appmanager/b;

    return-void
.end method

.method public bhr(J)V
    .locals 1

    iput-wide p1, p0, Lcom/miui/appmanager/model/i;->aQc:J

    return-void
.end method

.method public bhs(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/appmanager/model/i;->aQd:Ljava/lang/String;

    return-void
.end method

.method public bht(J)V
    .locals 1

    iput-wide p1, p0, Lcom/miui/appmanager/model/i;->aQe:J

    return-void
.end method

.method public bhu(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/appmanager/model/i;->aQf:Ljava/lang/String;

    return-void
.end method

.method public createViewHolder(Landroid/view/View;)Lcom/miui/appmanager/model/f;
    .locals 1

    new-instance v0, Lcom/miui/appmanager/model/j;

    invoke-direct {v0, p1}, Lcom/miui/appmanager/model/j;-><init>(Landroid/view/View;)V

    return-object v0
.end method

.method public getPackageName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/miui/appmanager/model/i;->packageName:Ljava/lang/String;

    return-object v0
.end method

.method public getUid()I
    .locals 1

    iget v0, p0, Lcom/miui/appmanager/model/i;->uid:I

    return v0
.end method

.method public isEnabled()Z
    .locals 1

    iget-boolean v0, p0, Lcom/miui/appmanager/model/i;->enabled:Z

    return v0
.end method

.method public setLabel(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/appmanager/model/i;->aPZ:Ljava/lang/String;

    return-void
.end method

.method public setSearchInput(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/appmanager/model/i;->aQb:Ljava/lang/String;

    return-void
.end method
