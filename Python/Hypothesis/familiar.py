import familiar
from scipy.stats import ttest_1samp, ttest_ind, chi2_contingency

vein_pack_lifespans = familiar.lifespans(package='vein')

vein_pack_test = ttest_1samp(vein_pack_lifespans, 71)
print(vein_pack_test.pvalue)

artery_pack_lifespans = familiar.lifespans(package='artery')

package_comparison_results = ttest_ind(vein_pack_lifespans, artery_pack_lifespans)
print(package_comparison_results.pvalue)

iron_contingency_table = familiar.iron_counts_for_package()
