.class public Lcom/amap/api/maps2d/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Lcom/amap/api/maps2d/d;


# instance fields
.field private a:I

.field private b:Z

.field private c:Z

.field private d:Z

.field private e:Z

.field private f:Lcom/amap/api/maps2d/a/c;

.field private g:Z

.field private h:Z

.field private i:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/amap/api/maps2d/d;

    invoke-direct {v0}, Lcom/amap/api/maps2d/d;-><init>()V

    sput-object v0, Lcom/amap/api/maps2d/c;->CREATOR:Lcom/amap/api/maps2d/d;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    const/4 v1, 0x1

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v1, p0, Lcom/amap/api/maps2d/c;->a:I

    iput-boolean v1, p0, Lcom/amap/api/maps2d/c;->b:Z

    iput-boolean v1, p0, Lcom/amap/api/maps2d/c;->c:Z

    iput-boolean v1, p0, Lcom/amap/api/maps2d/c;->d:Z

    iput-boolean v0, p0, Lcom/amap/api/maps2d/c;->e:Z

    iput-boolean v0, p0, Lcom/amap/api/maps2d/c;->g:Z

    iput-boolean v0, p0, Lcom/amap/api/maps2d/c;->h:Z

    iput v0, p0, Lcom/amap/api/maps2d/c;->i:I

    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    iget v0, p0, Lcom/amap/api/maps2d/c;->i:I

    return v0
.end method

.method public a(I)Lcom/amap/api/maps2d/c;
    .locals 0

    iput p1, p0, Lcom/amap/api/maps2d/c;->a:I

    return-object p0
.end method

.method public a(Lcom/amap/api/maps2d/a/c;)Lcom/amap/api/maps2d/c;
    .locals 0

    iput-object p1, p0, Lcom/amap/api/maps2d/c;->f:Lcom/amap/api/maps2d/a/c;

    return-object p0
.end method

.method public a(Z)Lcom/amap/api/maps2d/c;
    .locals 0

    iput-boolean p1, p0, Lcom/amap/api/maps2d/c;->e:Z

    return-object p0
.end method

.method public b(Z)Lcom/amap/api/maps2d/c;
    .locals 0

    iput-boolean p1, p0, Lcom/amap/api/maps2d/c;->h:Z

    return-object p0
.end method

.method public b()Ljava/lang/Boolean;
    .locals 1

    iget-boolean v0, p0, Lcom/amap/api/maps2d/c;->e:Z

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public c()I
    .locals 1

    iget v0, p0, Lcom/amap/api/maps2d/c;->a:I

    return v0
.end method

.method public c(Z)Lcom/amap/api/maps2d/c;
    .locals 0

    iput-boolean p1, p0, Lcom/amap/api/maps2d/c;->d:Z

    return-object p0
.end method

.method public d()Lcom/amap/api/maps2d/a/c;
    .locals 1

    iget-object v0, p0, Lcom/amap/api/maps2d/c;->f:Lcom/amap/api/maps2d/a/c;

    return-object v0
.end method

.method public d(Z)Lcom/amap/api/maps2d/c;
    .locals 0

    iput-boolean p1, p0, Lcom/amap/api/maps2d/c;->g:Z

    return-object p0
.end method

.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public e(Z)Lcom/amap/api/maps2d/c;
    .locals 0

    iput-boolean p1, p0, Lcom/amap/api/maps2d/c;->b:Z

    return-object p0
.end method

.method public e()Ljava/lang/Boolean;
    .locals 1

    iget-boolean v0, p0, Lcom/amap/api/maps2d/c;->h:Z

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public f(Z)Lcom/amap/api/maps2d/c;
    .locals 0

    iput-boolean p1, p0, Lcom/amap/api/maps2d/c;->c:Z

    return-object p0
.end method

.method public f()Ljava/lang/Boolean;
    .locals 1

    iget-boolean v0, p0, Lcom/amap/api/maps2d/c;->d:Z

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public g()Ljava/lang/Boolean;
    .locals 1

    iget-boolean v0, p0, Lcom/amap/api/maps2d/c;->g:Z

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public h()Ljava/lang/Boolean;
    .locals 1

    iget-boolean v0, p0, Lcom/amap/api/maps2d/c;->b:Z

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public i()Ljava/lang/Boolean;
    .locals 1

    iget-boolean v0, p0, Lcom/amap/api/maps2d/c;->c:Z

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 3

    iget-object v0, p0, Lcom/amap/api/maps2d/c;->f:Lcom/amap/api/maps2d/a/c;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    iget v0, p0, Lcom/amap/api/maps2d/c;->a:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v0, 0x6

    new-array v0, v0, [Z

    const/4 v1, 0x0

    iget-boolean v2, p0, Lcom/amap/api/maps2d/c;->b:Z

    aput-boolean v2, v0, v1

    const/4 v1, 0x1

    iget-boolean v2, p0, Lcom/amap/api/maps2d/c;->c:Z

    aput-boolean v2, v0, v1

    const/4 v1, 0x2

    iget-boolean v2, p0, Lcom/amap/api/maps2d/c;->d:Z

    aput-boolean v2, v0, v1

    const/4 v1, 0x3

    iget-boolean v2, p0, Lcom/amap/api/maps2d/c;->e:Z

    aput-boolean v2, v0, v1

    const/4 v1, 0x4

    iget-boolean v2, p0, Lcom/amap/api/maps2d/c;->g:Z

    aput-boolean v2, v0, v1

    const/4 v1, 0x5

    iget-boolean v2, p0, Lcom/amap/api/maps2d/c;->h:Z

    aput-boolean v2, v0, v1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBooleanArray([Z)V

    return-void
.end method
