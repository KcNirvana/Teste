package io.lindstrom.m3u8.model;

import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import java.util.List;
import java.util.Objects;
import java.util.Optional;
import javax.annotation.Generated;

/**
 * Builds instances of type {@link MasterPlaylist MasterPlaylist}.
 * Initialize attributes and then invoke the {@link #build()} method to create an
 * immutable instance.
 * <p><em>{@code MasterPlaylistBuilder} is not thread-safe and generally should not be stored in a field or collection,
 * but instead used immediately to create instances.</em>
 */
@SuppressWarnings({"all"})
@Generated({"Immutables.generator", "MasterPlaylist"})
class MasterPlaylistBuilder {
  private static final long OPT_BIT_INDEPENDENT_SEGMENTS = 0x1L;
  private long optBits;

  private List<AlternativeRendition> alternativeRenditions = new ArrayList<AlternativeRendition>();
  private List<Variant> variants = new ArrayList<Variant>();
  private List<IFrameVariant> iFrameVariants = new ArrayList<IFrameVariant>();
  private Integer version;
  private boolean independentSegments;

  /**
   * Creates a builder for {@link MasterPlaylist MasterPlaylist} instances.
   */
  MasterPlaylistBuilder() {
    if (!(this instanceof MasterPlaylist.Builder)) {
      throw new UnsupportedOperationException("Use: new MasterPlaylist.Builder()");
    }
  }

  /**
   * Fill a builder with attribute values from the provided {@code io.lindstrom.m3u8.model.Playlist} instance.
   * @param instance The instance from which to copy values
   * @return {@code this} builder for use in a chained invocation
   */
  public final MasterPlaylist.Builder from(Playlist instance) {
    Objects.requireNonNull(instance, "instance");
    from((Object) instance);
    return (MasterPlaylist.Builder) this;
  }

  /**
   * Fill a builder with attribute values from the provided {@code io.lindstrom.m3u8.model.MasterPlaylist} instance.
   * @param instance The instance from which to copy values
   * @return {@code this} builder for use in a chained invocation
   */
  public final MasterPlaylist.Builder from(MasterPlaylist instance) {
    Objects.requireNonNull(instance, "instance");
    from((Object) instance);
    return (MasterPlaylist.Builder) this;
  }

  private void from(Object object) {
    if (object instanceof Playlist) {
      Playlist instance = (Playlist) object;
      independentSegments(instance.independentSegments());
      Optional<Integer> versionOptional = instance.version();
      if (versionOptional.isPresent()) {
        version(versionOptional);
      }
    }
    if (object instanceof MasterPlaylist) {
      MasterPlaylist instance = (MasterPlaylist) object;
      addAllAlternativeRenditions(instance.alternativeRenditions());
      addAllIFrameVariants(instance.iFrameVariants());
      addAllVariants(instance.variants());
    }
  }

  /**
   * Adds one element to {@link MasterPlaylist#alternativeRenditions() alternativeRenditions} list.
   * @param element A alternativeRenditions element
   * @return {@code this} builder for use in a chained invocation
   */
  public final MasterPlaylist.Builder addAlternativeRenditions(AlternativeRendition element) {
    this.alternativeRenditions.add(Objects.requireNonNull(element, "alternativeRenditions element"));
    return (MasterPlaylist.Builder) this;
  }

  /**
   * Adds elements to {@link MasterPlaylist#alternativeRenditions() alternativeRenditions} list.
   * @param elements An array of alternativeRenditions elements
   * @return {@code this} builder for use in a chained invocation
   */
  public final MasterPlaylist.Builder addAlternativeRenditions(AlternativeRendition... elements) {
    for (AlternativeRendition element : elements) {
      this.alternativeRenditions.add(Objects.requireNonNull(element, "alternativeRenditions element"));
    }
    return (MasterPlaylist.Builder) this;
  }

  /**
   * Sets or replaces all elements for {@link MasterPlaylist#alternativeRenditions() alternativeRenditions} list.
   * @param elements An iterable of alternativeRenditions elements
   * @return {@code this} builder for use in a chained invocation
   */
  public final MasterPlaylist.Builder alternativeRenditions(Iterable<? extends AlternativeRendition> elements) {
    this.alternativeRenditions.clear();
    return addAllAlternativeRenditions(elements);
  }

  /**
   * Adds elements to {@link MasterPlaylist#alternativeRenditions() alternativeRenditions} list.
   * @param elements An iterable of alternativeRenditions elements
   * @return {@code this} builder for use in a chained invocation
   */
  public final MasterPlaylist.Builder addAllAlternativeRenditions(Iterable<? extends AlternativeRendition> elements) {
    for (AlternativeRendition element : elements) {
      this.alternativeRenditions.add(Objects.requireNonNull(element, "alternativeRenditions element"));
    }
    return (MasterPlaylist.Builder) this;
  }

  /**
   * Adds one element to {@link MasterPlaylist#variants() variants} list.
   * @param element A variants element
   * @return {@code this} builder for use in a chained invocation
   */
  public final MasterPlaylist.Builder addVariants(Variant element) {
    this.variants.add(Objects.requireNonNull(element, "variants element"));
    return (MasterPlaylist.Builder) this;
  }

  /**
   * Adds elements to {@link MasterPlaylist#variants() variants} list.
   * @param elements An array of variants elements
   * @return {@code this} builder for use in a chained invocation
   */
  public final MasterPlaylist.Builder addVariants(Variant... elements) {
    for (Variant element : elements) {
      this.variants.add(Objects.requireNonNull(element, "variants element"));
    }
    return (MasterPlaylist.Builder) this;
  }

  /**
   * Sets or replaces all elements for {@link MasterPlaylist#variants() variants} list.
   * @param elements An iterable of variants elements
   * @return {@code this} builder for use in a chained invocation
   */
  public final MasterPlaylist.Builder variants(Iterable<? extends Variant> elements) {
    this.variants.clear();
    return addAllVariants(elements);
  }

  /**
   * Adds elements to {@link MasterPlaylist#variants() variants} list.
   * @param elements An iterable of variants elements
   * @return {@code this} builder for use in a chained invocation
   */
  public final MasterPlaylist.Builder addAllVariants(Iterable<? extends Variant> elements) {
    for (Variant element : elements) {
      this.variants.add(Objects.requireNonNull(element, "variants element"));
    }
    return (MasterPlaylist.Builder) this;
  }

  /**
   * Adds one element to {@link MasterPlaylist#iFrameVariants() iFrameVariants} list.
   * @param element A iFrameVariants element
   * @return {@code this} builder for use in a chained invocation
   */
  public final MasterPlaylist.Builder addIFrameVariants(IFrameVariant element) {
    this.iFrameVariants.add(Objects.requireNonNull(element, "iFrameVariants element"));
    return (MasterPlaylist.Builder) this;
  }

  /**
   * Adds elements to {@link MasterPlaylist#iFrameVariants() iFrameVariants} list.
   * @param elements An array of iFrameVariants elements
   * @return {@code this} builder for use in a chained invocation
   */
  public final MasterPlaylist.Builder addIFrameVariants(IFrameVariant... elements) {
    for (IFrameVariant element : elements) {
      this.iFrameVariants.add(Objects.requireNonNull(element, "iFrameVariants element"));
    }
    return (MasterPlaylist.Builder) this;
  }

  /**
   * Sets or replaces all elements for {@link MasterPlaylist#iFrameVariants() iFrameVariants} list.
   * @param elements An iterable of iFrameVariants elements
   * @return {@code this} builder for use in a chained invocation
   */
  public final MasterPlaylist.Builder iFrameVariants(Iterable<? extends IFrameVariant> elements) {
    this.iFrameVariants.clear();
    return addAllIFrameVariants(elements);
  }

  /**
   * Adds elements to {@link MasterPlaylist#iFrameVariants() iFrameVariants} list.
   * @param elements An iterable of iFrameVariants elements
   * @return {@code this} builder for use in a chained invocation
   */
  public final MasterPlaylist.Builder addAllIFrameVariants(Iterable<? extends IFrameVariant> elements) {
    for (IFrameVariant element : elements) {
      this.iFrameVariants.add(Objects.requireNonNull(element, "iFrameVariants element"));
    }
    return (MasterPlaylist.Builder) this;
  }

  /**
   * Initializes the optional value {@link MasterPlaylist#version() version} to version.
   * @param version The value for version
   * @return {@code this} builder for chained invocation
   */
  public final MasterPlaylist.Builder version(int version) {
    this.version = version;
    return (MasterPlaylist.Builder) this;
  }

  /**
   * Initializes the optional value {@link MasterPlaylist#version() version} to version.
   * @param version The value for version
   * @return {@code this} builder for use in a chained invocation
   */
  public final MasterPlaylist.Builder version(Optional<Integer> version) {
    this.version = version.orElse(null);
    return (MasterPlaylist.Builder) this;
  }

  /**
   * Initializes the value for the {@link MasterPlaylist#independentSegments() independentSegments} attribute.
   * <p><em>If not set, this attribute will have a default value as returned by the initializer of {@link MasterPlaylist#independentSegments() independentSegments}.</em>
   * @param independentSegments The value for independentSegments 
   * @return {@code this} builder for use in a chained invocation
   */
  public final MasterPlaylist.Builder independentSegments(boolean independentSegments) {
    this.independentSegments = independentSegments;
    optBits |= OPT_BIT_INDEPENDENT_SEGMENTS;
    return (MasterPlaylist.Builder) this;
  }

  /**
   * Builds a new {@link MasterPlaylist MasterPlaylist}.
   * @return An immutable instance of MasterPlaylist
   * @throws java.lang.IllegalStateException if any required attributes are missing
   */
  public MasterPlaylist build() {
    return new MasterPlaylistBuilder.ImmutableMasterPlaylist(this);
  }

  private boolean independentSegmentsIsSet() {
    return (optBits & OPT_BIT_INDEPENDENT_SEGMENTS) != 0;
  }

  /**
   * Immutable implementation of {@link MasterPlaylist}.
   * <p>
   * Use the builder to create immutable instances:
   * {@code new MasterPlaylist.Builder()}.
   */
  private static final class ImmutableMasterPlaylist implements MasterPlaylist {
    private final List<AlternativeRendition> alternativeRenditions;
    private final List<Variant> variants;
    private final List<IFrameVariant> iFrameVariants;
    private final Integer version;
    private final boolean independentSegments;

    private ImmutableMasterPlaylist(MasterPlaylistBuilder builder) {
      this.alternativeRenditions = createUnmodifiableList(true, builder.alternativeRenditions);
      this.variants = createUnmodifiableList(true, builder.variants);
      this.iFrameVariants = createUnmodifiableList(true, builder.iFrameVariants);
      this.version = builder.version;
      this.independentSegments = builder.independentSegmentsIsSet()
          ? builder.independentSegments
          : MasterPlaylist.super.independentSegments();
    }

    /**
     * @return The value of the {@code alternativeRenditions} attribute
     */
    @Override
    public List<AlternativeRendition> alternativeRenditions() {
      return alternativeRenditions;
    }

    /**
     * @return The value of the {@code variants} attribute
     */
    @Override
    public List<Variant> variants() {
      return variants;
    }

    /**
     * @return The value of the {@code iFrameVariants} attribute
     */
    @Override
    public List<IFrameVariant> iFrameVariants() {
      return iFrameVariants;
    }

    /**
     * @return The value of the {@code version} attribute
     */
    @Override
    public Optional<Integer> version() {
      return Optional.ofNullable(version);
    }

    /**
     * @return The value of the {@code independentSegments} attribute
     */
    @Override
    public boolean independentSegments() {
      return independentSegments;
    }

    /**
     * This instance is equal to all instances of {@code ImmutableMasterPlaylist} that have equal attribute values.
     * @return {@code true} if {@code this} is equal to {@code another} instance
     */
    @Override
    public boolean equals(Object another) {
      if (this == another) return true;
      return another instanceof MasterPlaylistBuilder.ImmutableMasterPlaylist
          && equalTo((MasterPlaylistBuilder.ImmutableMasterPlaylist) another);
    }

    private boolean equalTo(MasterPlaylistBuilder.ImmutableMasterPlaylist another) {
      return alternativeRenditions.equals(another.alternativeRenditions)
          && variants.equals(another.variants)
          && iFrameVariants.equals(another.iFrameVariants)
          && Objects.equals(version, another.version)
          && independentSegments == another.independentSegments;
    }

    /**
     * Computes a hash code from attributes: {@code alternativeRenditions}, {@code variants}, {@code iFrameVariants}, {@code version}, {@code independentSegments}.
     * @return hashCode value
     */
    @Override
    public int hashCode() {
      int h = 5381;
      h += (h << 5) + alternativeRenditions.hashCode();
      h += (h << 5) + variants.hashCode();
      h += (h << 5) + iFrameVariants.hashCode();
      h += (h << 5) + Objects.hashCode(version);
      h += (h << 5) + Boolean.hashCode(independentSegments);
      return h;
    }

    /**
     * Prints the immutable value {@code MasterPlaylist} with attribute values.
     * @return A string representation of the value
     */
    @Override
    public String toString() {
      StringBuilder builder = new StringBuilder("MasterPlaylist{");
      builder.append("alternativeRenditions=").append(alternativeRenditions);
      builder.append(", ");
      builder.append("variants=").append(variants);
      builder.append(", ");
      builder.append("iFrameVariants=").append(iFrameVariants);
      if (version != null) {
        builder.append(", ");
        builder.append("version=").append(version);
      }
      builder.append(", ");
      builder.append("independentSegments=").append(independentSegments);
      return builder.append("}").toString();
    }
  }

  private static <T> List<T> createSafeList(Iterable<? extends T> iterable, boolean checkNulls, boolean skipNulls) {
    ArrayList<T> list;
    if (iterable instanceof Collection<?>) {
      int size = ((Collection<?>) iterable).size();
      if (size == 0) return Collections.emptyList();
      list = new ArrayList<T>();
    } else {
      list = new ArrayList<T>();
    }
    for (T element : iterable) {
      if (skipNulls && element == null) continue;
      if (checkNulls) Objects.requireNonNull(element, "element");
      list.add(element);
    }
    return list;
  }

  private static <T> List<T> createUnmodifiableList(boolean clone, List<T> list) {
    switch(list.size()) {
    case 0: return Collections.emptyList();
    case 1: return Collections.singletonList(list.get(0));
    default:
      if (clone) {
        return Collections.unmodifiableList(new ArrayList<T>(list));
      } else {
        if (list instanceof ArrayList<?>) {
          ((ArrayList<?>) list).trimToSize();
        }
        return Collections.unmodifiableList(list);
      }
    }
  }
}
