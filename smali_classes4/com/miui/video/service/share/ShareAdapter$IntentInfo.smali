.class public Lcom/miui/video/service/share/ShareAdapter$IntentInfo;
.super Ljava/lang/Object;
.source "ShareAdapter.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/video/service/share/ShareAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "IntentInfo"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable<",
        "Lcom/miui/video/service/share/ShareAdapter$IntentInfo;",
        ">;"
    }
.end annotation


# instance fields
.field private className:Ljava/lang/String;

.field private icon:Landroid/graphics/drawable/Drawable;

.field private name:Ljava/lang/String;

.field private packageName:Ljava/lang/String;

.field private position:I

.field final synthetic this$0:Lcom/miui/video/service/share/ShareAdapter;


# direct methods
.method public constructor <init>(Lcom/miui/video/service/share/ShareAdapter;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/video/service/share/ShareAdapter$IntentInfo;->this$0:Lcom/miui/video/service/share/ShareAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/miui/video/service/share/ShareAdapter$IntentInfo;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/miui/video/service/share/ShareAdapter$IntentInfo;->packageName:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$002(Lcom/miui/video/service/share/ShareAdapter$IntentInfo;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/miui/video/service/share/ShareAdapter$IntentInfo;->packageName:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$102(Lcom/miui/video/service/share/ShareAdapter$IntentInfo;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/miui/video/service/share/ShareAdapter$IntentInfo;->className:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$202(Lcom/miui/video/service/share/ShareAdapter$IntentInfo;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;
    .locals 0

    iput-object p1, p0, Lcom/miui/video/service/share/ShareAdapter$IntentInfo;->icon:Landroid/graphics/drawable/Drawable;

    return-object p1
.end method

.method static synthetic access$300(Lcom/miui/video/service/share/ShareAdapter$IntentInfo;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/miui/video/service/share/ShareAdapter$IntentInfo;->name:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$302(Lcom/miui/video/service/share/ShareAdapter$IntentInfo;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/miui/video/service/share/ShareAdapter$IntentInfo;->name:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$402(Lcom/miui/video/service/share/ShareAdapter$IntentInfo;I)I
    .locals 0

    iput p1, p0, Lcom/miui/video/service/share/ShareAdapter$IntentInfo;->position:I

    return p1
.end method


# virtual methods
.method public compareTo(Lcom/miui/video/service/share/ShareAdapter$IntentInfo;)I
    .locals 1

    iget v0, p0, Lcom/miui/video/service/share/ShareAdapter$IntentInfo;->position:I

    iget p1, p1, Lcom/miui/video/service/share/ShareAdapter$IntentInfo;->position:I

    sub-int/2addr v0, p1

    return v0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    check-cast p1, Lcom/miui/video/service/share/ShareAdapter$IntentInfo;

    invoke-virtual {p0, p1}, Lcom/miui/video/service/share/ShareAdapter$IntentInfo;->compareTo(Lcom/miui/video/service/share/ShareAdapter$IntentInfo;)I

    move-result p1

    return p1
.end method

.method public getClassName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/miui/video/service/share/ShareAdapter$IntentInfo;->className:Ljava/lang/String;

    return-object v0
.end method

.method public getIcon()Landroid/graphics/drawable/Drawable;
    .locals 1

    iget-object v0, p0, Lcom/miui/video/service/share/ShareAdapter$IntentInfo;->icon:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/miui/video/service/share/ShareAdapter$IntentInfo;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getPackageName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/miui/video/service/share/ShareAdapter$IntentInfo;->packageName:Ljava/lang/String;

    return-object v0
.end method

.method public getPosition()I
    .locals 1

    iget v0, p0, Lcom/miui/video/service/share/ShareAdapter$IntentInfo;->position:I

    return v0
.end method
