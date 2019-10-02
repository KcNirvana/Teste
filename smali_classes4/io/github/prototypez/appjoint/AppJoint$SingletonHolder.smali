.class Lio/github/prototypez/appjoint/AppJoint$SingletonHolder;
.super Ljava/lang/Object;
.source "AppJoint.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/github/prototypez/appjoint/AppJoint;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "SingletonHolder"
.end annotation


# static fields
.field static INSTANCE:Lio/github/prototypez/appjoint/AppJoint;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lio/github/prototypez/appjoint/AppJoint;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lio/github/prototypez/appjoint/AppJoint;-><init>(Lio/github/prototypez/appjoint/AppJoint$1;)V

    sput-object v0, Lio/github/prototypez/appjoint/AppJoint$SingletonHolder;->INSTANCE:Lio/github/prototypez/appjoint/AppJoint;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
