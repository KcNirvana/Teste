.class public abstract Lcom/miui/antivirus/model/j;
.super Lcom/miui/antivirus/model/f;
.source ""


# instance fields
.field private appIcon:Landroid/graphics/drawable/Drawable;

.field private desc:Ljava/lang/String;

.field private isAdviseDel:Z

.field private isCheck:Z

.field private isList:Z

.field private name:Ljava/lang/String;

.field private packageName:Ljava/lang/String;

.field private path:Ljava/lang/String;

.field private pathList:Ljava/util/Set;

.field private scanType:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/miui/antivirus/model/f;-><init>()V

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/miui/antivirus/model/j;->pathList:Ljava/util/Set;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/miui/antivirus/model/j;->isList:Z

    return-void
.end method
